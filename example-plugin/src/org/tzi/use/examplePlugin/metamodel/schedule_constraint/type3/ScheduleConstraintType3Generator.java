package org.tzi.use.examplePlugin.metamodel.schedule_constraint.type3;

import org.tzi.use.examplePlugin.metamodel.OperatorEnum;
import org.tzi.use.examplePlugin.metamodel.eligibility_constraint.RootScope;
import org.tzi.use.examplePlugin.metamodel.schedule_constraint.ScheduleConstraintGenerator;

import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.AND;
import static org.tzi.use.examplePlugin.util.GeneratorUtils.buildAllowedOrCondition;
import static org.tzi.use.examplePlugin.util.GeneratorUtils.buildExistsCheckConditionEach;
import static org.tzi.use.examplePlugin.util.GeneratorUtils.buildIfCondition;
import static org.tzi.use.examplePlugin.util.GeneratorUtils.indent;

public class ScheduleConstraintType3Generator implements ScheduleConstraintGenerator<ScheduleConstraintType3> {
  @Override
  public String generate(String contextClass, String invariantName, ScheduleConstraintType3 sc3) {
    System.out.println("Generating ScheduleConstraintType3...");

    String rolePath = sc3.rolePath;
    System.out.println("Role Path: " + rolePath);
    String timeAttr = sc3.window.timeAttr;
    System.out.println("Time Attribute: " + timeAttr);
    String baseTime = sc3.window.baseTime;
    System.out.println("Base Time: " + baseTime);
    String unit = sc3.window.unit;
    System.out.println("Unit: " + unit);
    String duration = sc3.window.duration.toString();
    System.out.println("Duration: " + duration);

    OperatorEnum operatorEnum = sc3.limitAttribute.operator;
    String operator = operatorEnum.symbol;
    System.out.println("Operator: " + operator);
    String value = sc3.limitAttribute.value;
    System.out.println("Value: " + value);

    return null;
  }
}
