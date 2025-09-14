package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ ElementType.TYPE, ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface EligibilityConstraint {
	int minYearForAdvancedCourses() default 2; // Năm học tối thiểu để tham gia khóa học nâng cao

	int advancedCourseLevel() default 300; // Mức độ khóa học được xem là nâng cao (ví dụ: 300, 400)

	boolean requiresFacultyApproval() default false; // Yêu cầu phê duyệt của khoa khi không đạt điều kiện cơ bản

	double minGPAForOverload() default 3.0; // GPA tối thiểu cho phép học vượt

	boolean requiresProfessorApproval() default true; // Yêu cầu sự phê duyệt của giảng viên cho trường hợp học vượt

	double thesisEligibilityPercentage() default 80.0; // Phần trăm tín chỉ tối thiểu phải hoàn thành để đăng ký đồ án
														// tốt nghiệp

	boolean requiresInternshipForThesis() default false; // Yêu cầu hoàn thành thực tập trước khi đăng ký đồ án

	String minInternshipGrade() default "C"; // Điểm tối thiểu cần đạt cho môn thực tập

	String[] requiredCertificates() default {}; // Danh sách chứng chỉ yêu cầu để tham gia khóa học đặc biệt

	String description() default "";
}