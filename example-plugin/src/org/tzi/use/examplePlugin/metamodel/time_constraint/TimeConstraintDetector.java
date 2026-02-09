package org.tzi.use.examplePlugin.metamodel.time_constraint;

import org.tzi.use.examplePlugin.ast.ASTInterface;

import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.ALT_PART;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.CHECK_FOR_EXI;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.CONFLICT_CHECK;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.CROSS_REFERENCE;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.INTERSECTION_OP;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.MAX;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.WINDOW;
import static org.tzi.use.examplePlugin.util.UseUtils.hasSpecificKey;

public class TimeConstraintDetector {
  public TimeConstraintType detectType(ASTInterface astInterface) {
    if (true) {
      return TimeConstraintType.TYPE1;
    } else if (hasSpecificKey(astInterface, CHECK_FOR_EXI) && hasSpecificKey(astInterface, ALT_PART)) {
      return TimeConstraintType.TYPE2;
    } else if (hasSpecificKey(astInterface, WINDOW)) {
      return TimeConstraintType.TYPE3;
    }
    // Placeholder implementation
    return TimeConstraintType.UNSUPPORTED;
  }
}
