package org.tzi.use.examplePlugin.metamodel;

import java.util.List;

public class AttrCondPro {
  public List<String> attrs;
  public String matchAttr;
  public boolean neg;
  public Type type;

  public enum Type {
    MIN_LIM,
    MAX_LIM,
    FIX_BOOL,
    FIX_NUM
  }
}
