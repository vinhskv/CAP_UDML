package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
public @interface SizeConstraint {
	int min() default 10;

	int max() default 80;

	int cancelThreshold() default 10; // Tự hủy khi dưới ngưỡng

	int mergeThreshold() default 15; // Tự gộp khi dưới ngưỡng

	PriorityCriterion[] priorityOrder() default { PriorityCriterion.GRADUATING_STATUS, PriorityCriterion.GPA,
			PriorityCriterion.REGISTRATION_TIME, PriorityCriterion.FAILED_ATTEMPTS }; // Tiêu chí ưu tiên (theo thứ tự)

	String statusField() default "status"; // Trạng thái lớp học

	String newClassField() default "newClass";

	String specialCaseField() default "isGraduationRequired"; // Trường đặc biệt

	String description() default "";
}

enum PriorityCriterion {
	GRADUATING_STATUS, // Ưu tiên sinh viên sắp tốt nghiệp
	GPA, // Điểm trung bình
	REGISTRATION_TIME, // Thời gian đăng ký
	FAILED_ATTEMPTS // Số lần trượt môn
}