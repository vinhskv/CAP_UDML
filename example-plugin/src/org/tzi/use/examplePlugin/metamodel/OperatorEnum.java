package org.tzi.use.examplePlugin.metamodel;

import java.util.List;

public enum OperatorEnum {
  MAX("max", "<"),
  MIN("min", ">"),
  MAX_LIMIT("max_lim", "<="),
  MIN_LIMIT("min_lim", ">=");
  public final String name;
  public final String symbol;

  OperatorEnum(String name, String symbol) {
    this.name = name;
    this.symbol = symbol;
  }

  public static final List<OperatorEnum> OPERATORS = List.of(values());
}
