package org.vnu.sme.ocl2annos.annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface SumProduct {
    String collection();
    Filter[] filters() default {};
     String productField(); //Trường chứa giá trị nhân (tử số)
     String denominatorField() default ""; //Trường chứa giá trị mẫu số
    CalculationConfig config() default @CalculationConfig; //Các cấu hình đặc biệt theo loại tính toán
}

@Retention(RetentionPolicy.RUNTIME)
 @interface CalculationConfig {
     CalculationType type() default CalculationType.GENERIC;
    double defaultIfZero() default 0.0;
    String[] params() default {}; //Các tham số bổ sung
}

enum CalculationType {
    GPA,
    AVAILABLE_SEATS,
    CLASS_STATUS,
    FAILED_ATTEMPTS,
    GENERIC
}
