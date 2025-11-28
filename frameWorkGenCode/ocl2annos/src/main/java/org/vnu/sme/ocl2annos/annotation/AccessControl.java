package org.vnu.sme.ocl2annos.annotation;

public @interface AccessControl {
    String[] allowedRoles() default {};     // Các vai trò được phép
    boolean selfOnly() default false;       // Chỉ cho phép người dùng tự truy cập
    boolean requireAdmin() default false;   // Yêu cầu quyền admin
    boolean departmentRestricted() default false; // Giới hạn trong phạm vi khoa
}