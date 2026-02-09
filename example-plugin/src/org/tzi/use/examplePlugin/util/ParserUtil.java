package org.tzi.use.examplePlugin.util;

import org.tzi.use.examplePlugin.metamodel.AttrCondPro;
import org.tzi.use.examplePlugin.metamodel.IfPart;
import org.tzi.use.examplePlugin.metamodel.eligibility_constraint.type3.EligibilityConstraintType3;
import org.tzi.use.examplePlugin.util.enumarate.IfFixType;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.ARGS;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.CHECK_FOR_EXI;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.RATIO;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.SCALE;
import static org.tzi.use.examplePlugin.util.CommonAttributes.FIX_ATTR;
import static org.tzi.use.examplePlugin.util.CommonAttributes.FIX_BOOL;
import static org.tzi.use.examplePlugin.util.CommonAttributes.FIX_ENUM;
import static org.tzi.use.examplePlugin.util.CommonAttributes.FIX_NUM;
import static org.tzi.use.examplePlugin.util.CommonAttributes.FIX_STR;
import static org.tzi.use.examplePlugin.util.CommonAttributes.MAX_LIM;
import static org.tzi.use.examplePlugin.util.CommonAttributes.MAX_VALUE;
import static org.tzi.use.examplePlugin.util.CommonAttributes.MIN_LIM;
import static org.tzi.use.examplePlugin.util.CommonAttributes.MIN_VALUE;
import static org.tzi.use.examplePlugin.util.UseUtils.asString;

public class ParserUtil {
  public static List<IfPart> parseIfPart(Map<String, Object> astJson) {

    List<IfPart> result = new ArrayList<>();

    Map<String, Object> args =
        (Map<String, Object>) astJson.get(ARGS);

    System.out.println();

    if (args == null || !args.containsKey("ifPart")) {
      System.out.println("No ifPart found in AST JSON.");
      return List.of();
    }

    System.out.println("Parsing ifPart from args: " + args);

    List<Map<String, Object>> ifParts =
        (List<Map<String, Object>>) args.get("ifPart");

    System.out.println("Found ifParts: " + ifParts);

    for (Map<String, Object> cond : ifParts) {

      Map<String, Object> condArgs =
          (Map<String, Object>) cond.get(ARGS);

      IfPart ip = new IfPart();
      List<String> attrs = condArgs.entrySet().stream()
          .filter(e -> e.getKey().startsWith("attr"))
          .sorted(Map.Entry.comparingByKey())
          .map(e -> asString(e.getValue()))
          .toList();

      if (!attrs.isEmpty()) {
        ip.ifAttr = String.join(".", attrs);
      }

      if (condArgs.containsKey(FIX_ATTR)) {
        ip.ifFixType = IfFixType.FIX_ATTR;
        ip.ifFixValue = asString(condArgs.get(FIX_ATTR));
      } else if (condArgs.containsKey(FIX_NUM)) {
        ip.ifFixType = IfFixType.FIX_NUM;
        ip.ifFixValue = asString(condArgs.get(FIX_NUM));
      } else if (condArgs.containsKey(FIX_BOOL)) {
        ip.ifFixType = IfFixType.FIX_BOOL;
        ip.ifFixValue = asString(condArgs.get(FIX_BOOL));
      } else if (condArgs.containsKey(FIX_STR)) {
        ip.ifFixType = IfFixType.FIX_STR;
        ip.ifFixValue = asString(condArgs.get(FIX_STR));
      } else if (condArgs.containsKey(FIX_ENUM)) {
        ip.ifFixType = IfFixType.FIX_ENUM;
        ip.ifFixValue = asString(condArgs.get(FIX_ENUM));
      } else if (condArgs.containsKey(MAX_LIM)) {
        ip.ifFixType = IfFixType.MAX_VALUE;
        ip.ifFixValue = asString(condArgs.get(MAX_LIM));
      } else if (condArgs.containsKey(MIN_LIM)) {
        ip.ifFixType = IfFixType.MIN_VALUE;
        ip.ifFixValue = asString(condArgs.get(MAX_LIM));
      } else if (condArgs.containsKey(MAX_VALUE)) {
        ip.ifFixType = IfFixType.MAX_LIM;
        ip.ifFixValue = asString(condArgs.get(MAX_VALUE));
      } else if (condArgs.containsKey(MIN_VALUE)) {
        ip.ifFixType = IfFixType.MIN_LIM;
        ip.ifFixValue = asString(condArgs.get(MIN_VALUE));
      }

      if (condArgs.containsKey("negated")) {
        ip.negated = Boolean.TRUE.equals(condArgs.get("negated"));
      }

      result.add(ip);
    }

    return result;
  }

  public static List<String> parseAttrsFromCondArgs(Map<String, Object> condArgs) {
    System.out.println("Parsing attrs from condArgs: " + condArgs);
    List<String> attrs = new ArrayList<>();

    if (condArgs.containsKey("attr")) {
      attrs.add(asString(condArgs.get("attr")));
    }

    int i = 2;
    while (condArgs.containsKey("attr" + i)) {
      attrs.add(asString(condArgs.get("attr" + i)));
      i++;
    }

    return attrs;
  }


  public static List<AttrCondPro> parseCheckForExi(
      Map<String, Object> args
  ) {

    List<Map<String, Object>> checkForExi =
        (List<Map<String, Object>>) args.get(CHECK_FOR_EXI);

    if (checkForExi == null || checkForExi.isEmpty()) return null;

    List<AttrCondPro> attrConds = new ArrayList<>();

    for (Map<String, Object> attrCond : checkForExi) {

      Map<String, Object> condArgs =
          (Map<String, Object>) attrCond.get(ARGS);

      System.out.println("Parsing collect condition: " + condArgs);

      AttrCondPro c = new AttrCondPro();
      c.attrs = ParserUtil.parseAttrsFromCondArgs(condArgs);
      c.neg = Boolean.TRUE.equals(condArgs.get("neg"));

      // scale or ratio
      Object scale = condArgs.get(SCALE);
      Object ratio = condArgs.get(RATIO);

      c.scale = scale != null
          ? scale.toString()
          : (ratio != null ? ratio.toString() : null);

      if (condArgs.containsKey("minLim")) {
        c.type = AttrCondPro.Type.MIN_LIM;
        c.matchAttr = String.valueOf(condArgs.get("minLim"));
      } else if (condArgs.containsKey("maxLim")) {
        c.type = AttrCondPro.Type.MAX_LIM;
        c.matchAttr = String.valueOf(condArgs.get("maxLim"));
      } else if (condArgs.containsKey("fixBool")) {
        c.type = AttrCondPro.Type.FIX_BOOL;
        c.matchAttr = String.valueOf(condArgs.get("fixBool"));
      } else if (condArgs.containsKey("fixNum")) {
        c.type = AttrCondPro.Type.FIX_NUM;
        c.matchAttr = String.valueOf(condArgs.get("fixNum"));
      } else if (condArgs.containsKey("minLimAttr")) {
        c.type = AttrCondPro.Type.MIN_LIM_ATTR;
        c.matchAttr = String.valueOf(condArgs.get("minLimAttr"));
      } else if (condArgs.containsKey("maxLimAttr")) {
        c.type = AttrCondPro.Type.MAX_LIM_ATTR;
        c.matchAttr = String.valueOf(condArgs.get("maxLimAttr"));
      } else if (condArgs.containsKey("min")) {
        c.type = AttrCondPro.Type.MIN;
        c.matchAttr = String.valueOf(condArgs.get("min"));
      } else if (condArgs.containsKey("max")) {
        c.type = AttrCondPro.Type.MAX;
        c.matchAttr = String.valueOf(condArgs.get("max"));
      }

      attrConds.add(c);
    }

    return attrConds;
  }
}
