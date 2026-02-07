package org.tzi.use.examplePlugin.metamodel.size_constraint;

import org.tzi.use.examplePlugin.ast.ASTInterface;

import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.ALT_PART;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.CHECK_FOR_EXI;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.CONFLICT_CHECK;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.CROSS_REFERENCE;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.INTERSECTION_OP;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.MAX;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.WINDOW;
import static org.tzi.use.examplePlugin.util.UseUtils.hasSpecificKey;

public class SizeConstraintDetector {
  public SizeConstraintType detectType(ASTInterface astInterface) {
    if (true) {
      return SizeConstraintType.TYPE1;
    }
    // Placeholder implementation
    return SizeConstraintType.UNSUPPORTED;
  }
}
