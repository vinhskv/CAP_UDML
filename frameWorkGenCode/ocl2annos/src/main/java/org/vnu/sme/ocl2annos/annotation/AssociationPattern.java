package org.vnu.sme.ocl2annos.annotation;

//AssociationPattern trong domain model CourseMan:
//
//MinimumAssociation: SClassRe phải có ít nhất 3 CourseModule
//@AssociationPattern(
//	    name = "MinimumAssociation",
//	    context = SClassRegistration.class,
//	    minOccurs = 3,
//	    maxOccurs = -1,
//	    collection = "modules",
//	    message = "A course must have at least 3 modules"
//	)
//MaximumAssociation: Student không được đăng ký quá 5 Enrollment
//ExactAssociation: CourseModule phải có đúng 3 Assignment
//RequiredAssociation: Teacher phải thuộc ít nhất một Department
//ForbiddenAssociation: InactiveModule không được có Enrollment
//BalancedAssociation: Department phải có số lượng SClassRe và Teacher bằng nhau
//@AssociationPattern(
//	    name = "BalancedAssociation",
//	    context = Department.class,
//	    minOccurs = 0,
//	    maxOccurs = 0,
//	    collection = "courses,teachers",
//	    message = "A department must have an equal number of courses and teachers"
//	)
//InclusiveAssociation: AvailableStudents phải bao gồm tất cả EnrolledStudents
//ExclusiveAssociation: PassedCourses và CurrentCourses của Student không được chồng chéo
//ConditionalAssociation: Tất cả Student trong AdvancedCourse phải có ít nhất 30 credits
//ExistentialAssociation: Department phải có ít nhất một Teacher là trưởng khoa

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.FIELD})
public @interface AssociationPattern {
    String name() default "";
    Class<?> context() default Object.class;
    int minOccurs() default 0;
    int maxOccurs() default -1; // -1 represents unlimited
    String collection();
    String message() default "";
}