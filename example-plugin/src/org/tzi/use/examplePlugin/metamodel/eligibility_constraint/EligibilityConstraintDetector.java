package org.tzi.use.examplePlugin.metamodel.eligibility_constraint;

import org.tzi.use.examplePlugin.ast.ASTInterface;

import java.util.List;
import java.util.Map;

import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.CHECK_FOR_EXI;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.MAX;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.RATIO;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.SCALE;
import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.SUM_ATTR;

public class EligibilityConstraintDetector {
  public EligibilityConstraintType detectType(ASTInterface astInterface) {
    if (hasSumAttribute(astInterface) && hasMax(astInterface)) {
      return EligibilityConstraintType.TYPE1;
    } else if (hasCheckForExi(astInterface) && !hasScaleOrRatio(astInterface)) {
      return EligibilityConstraintType.TYPE2;
    } else if (hasScaleOrRatio(astInterface)) {
      return EligibilityConstraintType.TYPE3;
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

  public boolean hasCheckForExi(ASTInterface astInterface) {
    return astInterface.args.get(CHECK_FOR_EXI) != null;
  }

  public boolean hasScaleOrRatio(ASTInterface astInterface) {

    Object raw = astInterface.args.get(CHECK_FOR_EXI);

    if (!(raw instanceof List<?> list)) {
      return false;
    }
    for (Object o : list) {
      if (!(o instanceof ASTInterface cond)) {
        continue;
      }
      Map<String, Object> args = cond.args;
      if (args == null) {
        continue;
      }
      if (args.containsKey(SCALE) || args.containsKey(RATIO)) {
        return true;
      }
    }
    return false;
  }

}
