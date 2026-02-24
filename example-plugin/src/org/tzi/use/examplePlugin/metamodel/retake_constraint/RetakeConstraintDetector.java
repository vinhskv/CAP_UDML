package org.tzi.use.examplePlugin.metamodel.retake_constraint;

import org.tzi.use.examplePlugin.ast.ASTInterface;

import static org.tzi.use.examplePlugin.util.CommonAttributes.COLLECT;
import static org.tzi.use.examplePlugin.util.UseUtils.hasSpecificKey;

public class RetakeConstraintDetector {

  public RetakeConstraintType detectType(ASTInterface astInterface) {

    if (true) {
      return RetakeConstraintType.TYPE1;
    } else if (hasSpecificKey(astInterface, COLLECT)) {
      return RetakeConstraintType.TYPE3;
    }
    // Placeholder implementation
    return RetakeConstraintType.UNSUPPORTED;
  }
}
