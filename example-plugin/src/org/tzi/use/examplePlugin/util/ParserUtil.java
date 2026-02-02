package org.tzi.use.examplePlugin.util;

import org.tzi.use.examplePlugin.metamodel.IfPart;
import org.tzi.use.examplePlugin.util.enumarate.IfFixType;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.ARGS;
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

    List<Map<String, Object>> ifParts =
        (List<Map<String, Object>>) args.get("ifPart");

    if (ifParts == null || ifParts.isEmpty()) {
      return result;
    }

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
}
