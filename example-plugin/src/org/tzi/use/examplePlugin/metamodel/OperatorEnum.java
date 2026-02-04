package org.tzi.use.examplePlugin.metamodel;

import java.util.List;

public enum OperatorEnum {

  // operator for value comparison only
  // e.g: 3, 4, 5.6, "abc",...
  MAX("max", "<"),
  MIN("min", ">"),
  MAX_LIMIT("maxLim", "<="),
  MIN_LIMIT("minLim", ">=");



  public final String name;
  public final String symbol;

  OperatorEnum(String name, String symbol) {
    this.name = name;
    this.symbol = symbol;
  }

  public static final List<OperatorEnum> OPERATORS = List.of(values());
}
