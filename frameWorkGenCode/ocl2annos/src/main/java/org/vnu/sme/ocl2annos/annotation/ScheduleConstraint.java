package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE, ElementType.METHOD })
public @interface ScheduleConstraint {

	String name() default "";

	boolean checkTimeConflict() default true; // Kiểm tra xung đột thời gian giữa các lớp học trong danh sách đăng ký.

	boolean requireTheoryAndPractice() default false; // Yêu cầu sinh viên phải đăng ký hoặc đã hoàn thành cả phần lý
														// thuyết và thực hành

	int maxClassSwitches() default 2; // Số lần chuyển lớp tối đa cho phép trong toàn bộ học kỳ.

	int maxClassSwitchesInPeriod() default 2; // Số lần chuyển lớp tối đa trong khoảng thời gian cho phép kể từ ngày bắt
												// đầu học kỳ.

	int switchPeriodDays() default 7; // Số ngày kể từ ngày bắt đầu học kỳ để giới hạn chuyển lớp.

	String description() default "";
}
