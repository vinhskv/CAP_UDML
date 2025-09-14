package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ ElementType.TYPE, ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface SumConstraint {
	int min() default 0; // Giới hạn tổng giá trị tối thiểu

	int max() default Integer.MAX_VALUE; // Giới hạn tổng giá trị tối đa

	String collection() default ""; // Tên collection cần kiểm tra (ví dụ: "enrolments")

	Filter[] filters() default {}; // Các điều kiện lọc collection

	String sumField() default ""; // Trường cần tính tổng (ví dụ: "courseModule.credits")

	Condition[] preconditions() default {}; // Điều kiện tiên quyết để áp dụng ràng buộc

	double avThreshold() default 0.0; // Ngưỡng "Av" áp dụng điều kiện

	int conditionalMax() default 0; // Giới hạn tín chỉ khi không đạt "Av"

	boolean exemptionAllowed() default false;// Cho phép miễn trừ

	String description() default ""; // Thông báo ràng buộc
}

// @interface Filter {
//    String field(); //Tên trường dùng để lọc (ví dụ: "semester")
//    String fieldValue() default ""; //Tên trường chứa giá trị so sánh (ví dụ: "currentSemester")
//     boolean isDefined() default true; //Kiểm tra trường có tồn tại
//}
//Condittion
@Retention(RetentionPolicy.RUNTIME)
@interface Condition {
    String field(); //Tên trường kiểm tra (ví dụ: "isDualMajor")
    String operator() default "="; //Toán tử so sánh >, >=, <, <=, !=, =
    String value() default "true";//Giá trị so sánh
}