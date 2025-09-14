/*package org.vnu.sme.ocl2annos.oclPattern.annotation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;
import java.lang.annotation.*;
import org.vnu.sme.ocl2annos.oclPattern.validate.AverageConstraintValidator;


@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = {AverageConstraintValidator.class})
public @interface AverageConstraint {
    String message() default "Average score exceeds the allowed maximum";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
    double max();
}
*/
package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Annotation for validating that the average of a field in a collection is within specified bounds.
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
public @interface AverageConstraint {
    /**
     * The minimum allowed average value
     */
    double min() default 0.0;
    
    /**
     * The maximum allowed average value
     */
    double max() default Double.MAX_VALUE;
    
    /**
     * Optional: The name of the field in the entity that contains the collection.
     * If not specified, defaults will be used based on entity type.
     */
    String collection() default "";
    
    /**
     * Optional: The name of the field in the collection items that contains the value to average.
     * If not specified, defaults will be used based on collection item type.
     */
    String field() default "";
    
    /**
     * Optional: Custom error message
     */
    String message() default "";
}