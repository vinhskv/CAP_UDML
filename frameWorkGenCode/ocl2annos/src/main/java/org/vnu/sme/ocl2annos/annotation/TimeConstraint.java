package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE, ElementType.FIELD })
public @interface TimeConstraint {
	int withdrawAfterSemesterStartDays() default 21; // Thời hạn rút môn học (tính từ ngày bắt đầu học kỳ)

	int withdrawAfterCourseStartDays() default 14; // Thời hạn rút môn học (tính từ ngày bắt đầu môn)

	int paymentDeadlineDays() default 21; // Thời hạn thanh toán học phí (tính từ ngày đăng ký)

	int maxStudyYears() default 5; // Thời gian học tối đa (năm)

	int maxLeaveSemesters() default 2; // Số học kỳ bảo lưu tối đa

	boolean autoCancelUnpaid() default true; // Tự động hủy đăng ký nếu không thanh toán

	String semesterStartField() default "semester.startDate";

	String courseStartField() default "courseModule.startDate";

	String enrollmentDateField() default "enrollmentDate";

	String description() default "";
}
