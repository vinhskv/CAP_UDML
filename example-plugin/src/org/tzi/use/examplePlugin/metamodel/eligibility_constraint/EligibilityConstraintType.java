package org.tzi.use.examplePlugin.metamodel.eligibility_constraint;

import org.tzi.use.examplePlugin.metamodel.eligibility_constraint.type1.EligibilityConstraintType1Generator;
import org.tzi.use.examplePlugin.metamodel.eligibility_constraint.type1.EligibilityConstraintType1Parser;

public enum EligibilityConstraintType {
  TYPE1(new EligibilityConstraintType1Parser(), new EligibilityConstraintType1Generator()),
  TYPE2(null, null),
  TYPE3(null, null),
  TYPE4(null, null),
  TYPE5(null, null),
  UNSUPPORTED(null, null);

  public final EligibilityConstraintParser<?> parser;
  public final EligibilityConstraintGenerator<?> generator;

  EligibilityConstraintType(
      EligibilityConstraintParser<? extends EligibilityConstraintInterface> parser,
      EligibilityConstraintGenerator<? extends EligibilityConstraintInterface> generator
  ) {
    this.parser = parser;
    this.generator = generator;
  }

  @SuppressWarnings("unchecked")
  public <T extends EligibilityConstraintInterface> EligibilityConstraintParser<T> parser() {
    return (EligibilityConstraintParser<T>) parser;
  }

  @SuppressWarnings("unchecked")
  public <T extends EligibilityConstraintInterface> EligibilityConstraintGenerator<T> generator() {
    return (EligibilityConstraintGenerator<T>) generator;
  }
}
