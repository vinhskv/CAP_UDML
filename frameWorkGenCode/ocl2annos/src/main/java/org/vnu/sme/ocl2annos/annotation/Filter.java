package org.vnu.sme.ocl2annos.annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
public @interface Filter {
     String field(); //Tên trường dùng để lọc (ví dụ: "semester")
     String fieldValue() default ""; //Tên trường chứa giá trị so sánh (ví dụ: "currentSemester")
      boolean isDefined() default true; //Kiểm tra trường có tồn tại
}