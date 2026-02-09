package org.tzi.use.examplePlugin.metamodel.time_constraint;

import org.tzi.use.examplePlugin.metamodel.time_constraint.type1.TimeConstraintType1Generator;
import org.tzi.use.examplePlugin.metamodel.time_constraint.type1.TimeConstraintType1Parser;

public enum TimeConstraintType {
  TYPE1(new TimeConstraintType1Parser(), new TimeConstraintType1Generator()),
  TYPE2(null, null),
  TYPE3(null, null),
  TYPE4(null, null),
  UNSUPPORTED(null, null);

  public final TimeConstraintParser<?> parser;
  public final TimeConstraintGenerator<?> generator;

  TimeConstraintType(
      TimeConstraintParser<? extends TimeConstraintInterface> parser,
      TimeConstraintGenerator<? extends TimeConstraintInterface> generator
  ) {
    this.parser = parser;
    this.generator = generator;
  }

  @SuppressWarnings("unchecked")
  public <T extends TimeConstraintInterface> TimeConstraintParser<T> parser() {
    return (TimeConstraintParser<T>) parser;
  }

  @SuppressWarnings("unchecked")
  public <T extends TimeConstraintInterface> TimeConstraintGenerator<T> generator() {
    return (TimeConstraintGenerator<T>) generator;
  }
}
