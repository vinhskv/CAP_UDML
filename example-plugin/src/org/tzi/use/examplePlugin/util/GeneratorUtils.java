package org.tzi.use.examplePlugin.util;

import org.tzi.use.examplePlugin.metamodel.AttrCondPro;
import org.tzi.use.examplePlugin.metamodel.IfPart;
import org.tzi.use.examplePlugin.metamodel.eligibility_constraint.RootScope;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class GeneratorUtils {

  /**
   * If parts to condition string
   *
   * @param ifParts
   * @return
   */
  public static String buildIfCondition(List<IfPart> ifParts) {

    if (ifParts == null || ifParts.isEmpty()) {
      return null;
    }

    return ifParts.stream()
        .map(c -> {
          String cond;
          switch (c.ifFixType) {
            case FIX_NUM, FIX_BOOL, FIX_ATTR -> cond = "self." + c.ifAttr + " = " + c.ifFixValue;
            case FIX_STR, FIX_ENUM -> cond = "self." + c.ifAttr + " = '" + c.ifFixValue + "'";
            case MAX_LIM -> cond = "self." + c.ifAttr + " <= " + c.ifFixValue;
            case MIN_LIM -> cond = "self." + c.ifAttr + " >= " + c.ifFixValue;

            default -> throw new RuntimeException("Invalid ifPart");
          }
          return c.negated ? "not (" + cond + ")" : cond;
        })
        .collect(Collectors.joining(" and "));
  }


  public static String buildAllowedCondition(
      List<AttrCondPro> filters,
      RootScope scope
  ) {
    int lastIndex = filters.size() - 1;

    return IntStream.range(0, filters.size())
        .mapToObj(i -> buildSingleAllowedCondition(
            filters.get(i),
            scope,
            i == lastIndex
        ))
        .collect(Collectors.joining(" and "));
  }

  private static String buildSingleAllowedCondition(
      AttrCondPro c,
      RootScope scope,
      boolean isLast
  ) {

    String root;
    if (scope == RootScope.ALL) {
      root = "self";
    } else if (scope == RootScope.LAST_ONLY && isLast) {
      root = "self";
    } else {
      root = "e";
    }

    String right = "";
    if (c.scale != null && !c.scale.isEmpty()) {
      right = c.scale + " * " + root + "." + c.attrs.get(0) + "." + c.matchAttr;
    } else {
      right = root + "." + c.matchAttr;
    }

    String path = root + "." + String.join(".", c.attrs);

    String cond;
    switch (c.type) {
      case MIN_LIM, MIN_LIM_ATTR, MIN -> cond = path + " < " + right;

      case MAX_LIM, MAX_LIM_ATTR, MAX -> cond = path + " > " + right;

      case FIX_BOOL -> cond = Boolean.parseBoolean(c.matchAttr.toString())
          ? path
          : "not " + path;

      default -> throw new RuntimeException("Unsupported AttrCondPro type: " + c.type);
    }

    return c.neg ? "not (" + cond + ")" : cond;
  }


  /**
   * Builds an OCL exists condition for the given collection and attribute conditions.
   * self.enrolments->exists(e
   * | e.course.isThesis)
   *
   * @param collection
   * @param conds
   * @return
   */
  public static String buildExistsCheckCondition(
      String collection,
      List<AttrCondPro> conds
  ) {
    if (conds == null || conds.isEmpty()) {
      return "true";
    }

    String body = buildAllowedCondition(conds, RootScope.NONE);
    return "self." + collection + "->exists(e | " + body + ")";
  }


  /**
   * Builds an OCL exists condition for the given collection and attribute conditions.
   * self.enrolments->exists(e
   * | e.course.isThesis)
   *
   * @param collection
   * @param conds
   * @return
   */
  public static String buildExistsIfCondition(
      String collection,
      List<IfPart> conds
  ) {
    String body = conds.stream()
        .map(c -> {
          String path = "e." + c.ifAttr;

          String cond;
          switch (c.ifFixType) {
            case FIX_BOOL -> cond = path;

            case FIX_NUM, FIX_ATTR, FIX_ENUM -> {
              if (c.ifFixValue == null) {
                throw new IllegalStateException(
                    "FIX_NUM/FIX_ATTR but ifFixValue is null for " + c.ifAttr
                );
              }
              cond = path + " = " + c.ifFixValue;
            }

            case FIX_STR -> {
              if (c.ifFixValue == null) {
                throw new IllegalStateException(
                    "FIX_STR but ifFixValue is null for " + c.ifAttr
                );
              }
              cond = path + " = '" + c.ifFixValue + "'";
            }

            case MIN_LIM, MIN_VALUE ->
              cond = path + " >= " + c.ifFixValue;

            case MAX_LIM, MAX_VALUE ->
              cond = path + " <= " + c.ifFixValue;

            default -> throw new RuntimeException(
                "Unsupported IfFixType: " + c.ifFixType
            );
          }

          return c.negated ? "not (" + cond + ")" : cond;
        })
        .collect(Collectors.joining(" and "));

    return "self." + collection + "->exists(e | " + body + ")";
  }


  /**
   * Builds an dot notation path from the given attribute list.
   * E.g: ["course", "isThesis"] -> "self.course.isThesis"
   */
  public static String buildAttrPath(
      List<String> attrs,
      String prefix
  ) {
    if (attrs == null || attrs.isEmpty()) {
      return prefix;
    }
    if (prefix != null) {
      prefix = prefix.trim() + ".";
    }
    return prefix != null ? prefix + String.join(".", attrs) : String.join(".", attrs);
  }
}
