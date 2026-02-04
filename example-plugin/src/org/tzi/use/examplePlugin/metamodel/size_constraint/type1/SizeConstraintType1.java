package org.tzi.use.examplePlugin.metamodel.size_constraint.type1;

import org.tzi.use.examplePlugin.metamodel.AttrCondPro;
import org.tzi.use.examplePlugin.metamodel.schedule_constraint.ScheduleConstraintInterface;
import org.tzi.use.examplePlugin.metamodel.size_constraint.SizeConstraintInterface;

import java.util.List;

public class SizeConstraintType1 implements SizeConstraintInterface {

  String assocCls;
  String targetAssoc;
  String rolePath;

  public List<AttrCondPro> filters;

  boolean crossReference;
  String conflictCheck;
  String intersectionOp;
  int max;
}
