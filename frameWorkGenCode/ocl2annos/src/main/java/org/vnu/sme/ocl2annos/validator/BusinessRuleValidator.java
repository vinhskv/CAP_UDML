/*
package org.vnu.sme.ocl2annos.oclPattern.validate;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

public interface BusinessRuleValidator<A extends Annotation, T> {
    void validate(T entity, Field field, A annotation) throws ReflectiveOperationException;
}
*/
package org.vnu.sme.ocl2annos.validator;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

/**
 * Generic interface for validators that implement business rules
 * 
 * @param <T> the type of entity being validated
 * @param <A> the type of annotation being validated
 */
public interface BusinessRuleValidator<T, A extends Annotation> {
    
    /**
     * Validates the entity against the business rule defined by the annotation
     * 
     * @param entity the entity to validate
     * @param field the field to validate (can be null for class-level annotations)
     * @param annotation the annotation that defines the business rule
     * @throws ReflectiveOperationException if there's an error accessing fields
     */
    void validate(T entity, Field field, A annotation) throws ReflectiveOperationException;
}