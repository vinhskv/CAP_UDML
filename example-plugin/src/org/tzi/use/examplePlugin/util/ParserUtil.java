package org.tzi.use.examplePlugin.util;

import org.tzi.use.examplePlugin.metamodel.IfPart;
import org.tzi.use.examplePlugin.util.enumarate.IfFixType;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.ARGS;
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
      ip.ifAttr = asString(condArgs.get("attr"));

      if (condArgs.containsKey("fixAttr")) {
        ip.ifFixType = IfFixType.FIX_ATTR;
        ip.ifFixValue = asString(condArgs.get("fixAttr"));
      } else if (condArgs.containsKey("fixNum")) {
        ip.ifFixType = IfFixType.FIX_NUM;
        ip.ifFixValue = asString(condArgs.get("fixNum"));
      } else if (condArgs.containsKey("fixBool")) {
        ip.ifFixType = IfFixType.FIX_BOOL;
        ip.ifFixValue = asString(condArgs.get("fixBool"));
      } else if (condArgs.containsKey("fixStr")) {
        ip.ifFixType = IfFixType.FIX_STR;
        ip.ifFixValue = asString(condArgs.get("fixStr"));
      }

      // nếu sau này AST có not / negated
      if (condArgs.containsKey("negated")) {
        ip.negated = Boolean.TRUE.equals(condArgs.get("negated"));
      }

      result.add(ip);
    }

    return result;
  }

  public static List<String> parseAttrsFromCondArgs(Map<String, Object> condArgs) {
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
