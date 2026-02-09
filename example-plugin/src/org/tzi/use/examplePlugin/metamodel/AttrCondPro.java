package org.tzi.use.examplePlugin.metamodel;

import java.util.List;

public class AttrCondPro {
  public List<String> attrs;
  public String matchAttr;
  public boolean neg;
  public Type type;
  public String scale;

  // like plus = 21, minus = 45, times = 42, div = 47...
  public String operatorAndValue;

  public enum Type {
    MIN_LIM,
    MAX_LIM,
    FIX_BOOL,
    FIX_NUM,
    MIN_LIM_ATTR,
    MAX_LIM_ATTR,
    MIN,
    MAX,
    MATCH_STR,
    FIX_ENUM
  }
}
