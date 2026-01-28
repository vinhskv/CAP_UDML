package org.tzi.use.examplePlugin.util;

import org.tzi.use.examplePlugin.metamodel.AttrCond;
import org.tzi.use.examplePlugin.metamodel.AttrCondPro;
import org.tzi.use.examplePlugin.metamodel.IfPart;

import java.util.List;
import java.util.stream.Collectors;

public class GeneratorUtils {
  public static String buildIfCondition(List<IfPart> ifParts) {

    if (ifParts == null || ifParts.isEmpty()) {
      return null;
    }

    return ifParts.stream()
        .map(c -> {
          String cond;
          switch (c.ifFixType) {
            case FIX_NUM, FIX_BOOL, FIX_ATTR ->
                cond = "self." + c.ifAttr + " = " + c.ifFixValue;
            case FIX_STR ->
                cond = "self." + c.ifAttr + " = '" + c.ifFixValue + "'";
            default ->
                throw new RuntimeException("Invalid ifPart");
          }
          return c.negated ? "not (" + cond + ")" : cond;
        })
        .collect(Collectors.joining(" and "));
  }


  public static String buildAllowedCondition(List<AttrCondPro> filters) {
    return filters.stream()
        .map(GeneratorUtils::buildSingleAllowedCondition)
        .collect(Collectors.joining(" and "));
  }

  private static String buildSingleAllowedCondition(AttrCondPro c) {

    // e.course.level
    String path = "e." + String.join(".", c.attrs);

    String cond;
    switch (c.type) {
      case MIN_LIM ->
          cond = path + " < " + c.matchAttr;

      case MAX_LIM ->
          cond = path + " > " + c.matchAttr;

      case FIX_BOOL ->
          cond = Boolean.parseBoolean(c.matchAttr.toString())
              ? path
              : "not " + path;

      default ->
          throw new RuntimeException("Unsupported AttrCondPro type: " + c.type);
    }

    return c.neg ? "not (" + cond + ")" : cond;
  }

}
