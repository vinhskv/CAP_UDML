package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Repeatable(StatusConstraint.List.class)
public @interface StatusConstraint {
	String field(); // Tên trường điều kiện (có thể là trường boolean, int, enum, String, collection...)

	Comparison comparison(); // Toán tử so sánh: EQUALS, NOT_EQUALS, GREATER_THAN, LESS_THAN, IS_TRUE, IS_FALSE, SIZE_GREATER_THAN, SIZE_EQUALS, etc.

	String value() default ""; // Giá trị mong muốn để so sánh (nếu cần)

	String statusField(); // Nếu điều kiện đúng, trường trạng thái nào phải nhận giá trị gì

	String expectedStatus(); // Giá trị trạng thái mong muốn (so sánh equals)

	String discription() default "";

	@Retention(RetentionPolicy.RUNTIME)
	@Target(ElementType.TYPE)
	@interface List {
		StatusConstraint[] value();
	}

	enum Comparison {
		EQUALS, NOT_EQUALS, GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, IS_TRUE, IS_FALSE,
		SIZE_EQUALS, SIZE_GREATER_THAN, SIZE_LESS_THAN, CONTAINS
	}
}
