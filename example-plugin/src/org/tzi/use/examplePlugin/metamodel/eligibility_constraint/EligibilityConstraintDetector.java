package org.tzi.use.examplePlugin.metamodel.eligibility_constraint;

import org.tzi.use.examplePlugin.ast.ASTInterface;

import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.MAX;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.SUM_ATTR;

public class EligibilityConstraintDetector {
  public EligibilityConstraintType detectType(ASTInterface astInterface) {
    if (hasSumAttribute(astInterface) && hasMax(astInterface)) {
      return EligibilityConstraintType.TYPE1;
    }
    // Placeholder implementation
    return EligibilityConstraintType.UNSUPPORTED;
  }

  private boolean hasSumAttribute(ASTInterface astInterface) {
    return astInterface.args.get(SUM_ATTR) != null;
  }

  public boolean hasMax(ASTInterface astInterface) {
    return astInterface.args.get(MAX) != null;
  }
}
