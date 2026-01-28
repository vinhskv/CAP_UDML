package org.tzi.use.examplePlugin.metamodel;

import org.tzi.use.examplePlugin.util.enumarate.IfFixType;


public class IfPart {
  public String ifAttr;
  public IfFixType ifFixType;
  public String ifFixValue;
  public boolean negated;

  public String getIfAttr() {
    return ifAttr;
  }

  public void setIfAttr(String ifAttr) {
    this.ifAttr = ifAttr;
  }

  public IfFixType getIfFixType() {
    return ifFixType;
  }

  public void setIfFixType(IfFixType ifFixType) {
    this.ifFixType = ifFixType;
  }

  public String getIfFixValue() {
    return ifFixValue;
  }

  public void setIfFixValue(String ifFixValue) {
    this.ifFixValue = ifFixValue;
  }

  public boolean isNegated() {
    return negated;
  }

  public void setNegated(boolean negated) {
    this.negated = negated;
  }
}
