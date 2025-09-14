package org.vnu.sme.ocl2annos.annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface PrerequisiteConstraint {
      String name() default "";

    String minGrade() default "C+"; //Điểm tối thiểu cần đạt cho môn tiên quyết.
    
    boolean allowConcurrentEnrollment() default false; //Có cho phép đăng ký đồng thời môn học và môn tiên quyết không.

    boolean checkRequiredPreviousGrade() default true; //Kiểm tra điều kiện điểm số cho các môn học yêu cầu trước đó.
    
    /**
     * Ngăn các môn học trong danh sách đăng ký có mối quan hệ phụ thuộc ngược.
     * Ánh xạ OCL: self.enrolments->forAll(e1, e2 | e1.courseModule.prerequisites->excludes(e2.courseModule))
     */
    boolean preventReversePrerequisite() default true;

    boolean preventSelfPrerequisite() default true; //Ngăn môn học là điều kiện tiên quyết của chính nó.
    
    /**
     * Ngăn chu trình phụ thuộc giữa các môn học.
     * Ánh xạ OCL: self.prerequisites->closure(p | p.prerequisites)->excludes(self)
     */
    boolean preventCyclicDependency() default true;
    
    /**
     * Danh sách các môn học không được coi là môn tiên quyết (e.g., môn học liên quan).
     */
    String[] excludedCourses() default {};
    
    /**
     * Mô tả ràng buộc
     */
    String description() default "";
}