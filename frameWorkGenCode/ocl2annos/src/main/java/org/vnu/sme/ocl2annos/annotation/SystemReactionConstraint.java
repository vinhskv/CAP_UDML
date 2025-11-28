package org.vnu.sme.ocl2annos.annotation;

public @interface SystemReactionConstraint {
    boolean suggestAlternatives() default false;    // Gợi ý môn thay thế
    boolean autoCancelDependents() default false;   // Tự động hủy môn phụ thuộc
    boolean notifyStudent() default true;           // Thông báo cho sinh viên
    String[] reactionTypes() default {};            // Loại phản ứng
}