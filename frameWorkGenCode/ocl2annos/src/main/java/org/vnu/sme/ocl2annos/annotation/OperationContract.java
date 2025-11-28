package org.vnu.sme.ocl2annos.annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface OperationContract {
    String[] preconditions() default {};
    String[] postconditions() default {};
    String snapshot() default ""; //Tên biến lưu trạng thái trước khi thực thi (dùng cho @pre)
    Class<?>[] invariants() default {}; //Danh sách các bất biến cần kiểm tra
     int order() default 0; // Thứ tự ưu tiên kiểm tra
}

