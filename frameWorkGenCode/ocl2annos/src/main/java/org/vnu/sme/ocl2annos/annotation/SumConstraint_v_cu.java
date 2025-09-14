/*package org.vnu.sme.ocl2annos.oclPattern.annotation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;
import java.lang.annotation.*;
import org.vnu.sme.ocl2annos.oclPattern.validate.SumConstraintValidator;
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = {SumConstraintValidator.class}) 
public @interface SumConstraint {
    String message() default "Total credits must be between min and max";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
    double min();
    double max();
}
*/
package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Annotation for validating that the sum of a field in a collection is within specified bounds.
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
public @interface SumConstraint_v_cu {
    /**
     * The minimum allowed sum value
     */
    double min() default Double.MIN_VALUE;
    
    /**
     * The maximum allowed sum value
     */
    double max() default Double.MAX_VALUE;
    
    /**
     * Optional: The name of the field in the entity that contains the collection.
     * If not specified, defaults will be used based on entity type.
     */
    String collection() default "";
    
    /**
     * Optional: The name of the field in the collection items that contains the value to sum.
     * If not specified, defaults will be used based on collection item type.
     */
    String field() default "";
    
    /**
     * Optional: Custom error message
     */
    String message() default "";
}