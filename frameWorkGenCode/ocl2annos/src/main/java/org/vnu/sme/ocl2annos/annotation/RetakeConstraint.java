package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ ElementType.TYPE, ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface RetakeConstraint {
	String minGradeToRetake() default "B+"; // Điểm tối thiểu từ lần học trước để được phép đăng ký lại

	boolean requiresSpecialApproval() default true; // Yêu cầu phê duyệt đặc biệt để đăng ký lại môn đã đạt điểm cao

	int maxFailedAttempts() default 3; // Số lần được phép trượt một môn học

	boolean mandatoryRetake() default false; // Bắt buộc đăng ký lại môn học khi trượt nhiều lần

	int failedAttemptsToMandatory() default 2; // Số lần trượt dẫn đến bắt buộc đăng ký lại

	boolean applyThesisRetakeRules() default false; // Áp dụng quy tắc đặc biệt cho đồ án tốt nghiệp

	int maxThesisAttempts() default 2; // Số lần được phép trượt đồ án tốt nghiệp

	boolean allowAlternativeThesis() default true; // Cho phép thay thế đồ án bằng môn học khác khi vượt quá số lần cho
													// phép

	String description() default "";
}