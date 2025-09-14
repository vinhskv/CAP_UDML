package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Repeatable(StructuralConstraint.List.class)
public @interface StructuralConstraint {
	ConstraintType type(); // Loại ràng buộc cấu trúc

	String field(); // Tên trường cần kiểm tra (ví dụ: "previousSemester")

	String compareField() default ""; // Tên trường so sánh (dùng cho COMPARISON_TYPE)

	String discription() default "";

	@Retention(RetentionPolicy.RUNTIME)
	@Target(ElementType.TYPE)
	@interface List {
		StructuralConstraint[] value();
	}

	enum ConstraintType {
		SELF_REFERENCE, // Kiểm tra tham chiếu đến chính đối tượng
		PARENT_REFERENCE, // Kiểm tra tham chiếu cha
		FIELD_COMPARISON // So sánh giá trị giữa các trường
	}
}
