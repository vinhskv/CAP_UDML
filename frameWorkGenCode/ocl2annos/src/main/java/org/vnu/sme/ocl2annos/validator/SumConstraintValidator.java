/*
package org.vnu.sme.ocl2annos.oclPattern.validate;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.logging.Logger;

import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.oclPattern.annotation.SumConstraint;

import jakarta.validation.ConstraintViolationException;


@Component
public class SumConstraintValidator implements BusinessRuleValidator<Object, SumConstraint> {
    
    private static final Logger logger = Logger.getLogger(SumConstraintValidator.class.getName());

    @Override
    public void validate(Object entity, Field field, SumConstraint annotation) throws ReflectiveOperationException {
        logger.info("Validating SumConstraint for entity: " + entity.getClass().getSimpleName());
        
        // Get collection field name from annotation or use default
        String collectionFieldName = annotation.collection();
        if (collectionFieldName.isEmpty()) {
            // Default collection field based on entity type
            if (entity.getClass().getSimpleName().equalsIgnoreCase("Student")) {
                collectionFieldName = "enrolments";
            } else {
                logger.warning("No collection field specified for @SumConstraint on " + entity.getClass().getSimpleName());
                return;
            }
        }
        
        // Get the collection to validate
        Field collectionField;
        try {
            collectionField = entity.getClass().getDeclaredField(collectionFieldName);
        } catch (NoSuchFieldException e) {
            logger.warning("Collection field not found: " + collectionFieldName);
            return;
        }
        
        collectionField.setAccessible(true);
        
        Object collectionObj = collectionField.get(entity);
        if (collectionObj == null) {
            // If collection is null, nothing to validate
            return;
        }
        
        if (!(collectionObj instanceof Collection)) {
            logger.warning("Field " + collectionFieldName + " is not a Collection");
            return;
        }
        
        Collection<?> collection = (Collection<?>) collectionObj;
        if (collection.isEmpty()) {
            // If collection is empty, nothing to validate
            return;
        }
        
        // Calculate sum
        double sum = 0;
        String valueFieldName = annotation.field();
        if (valueFieldName.isEmpty()) {
            // Default value field
            if (collection.iterator().next().getClass().getSimpleName().equalsIgnoreCase("Enrolment")) {
                valueFieldName = "courseModule.credits";
            } else {
                logger.warning("No value field specified for @SumConstraint");
                return;
            }
        }
        
        for (Object item : collection) {
            if (item == null) continue;
            
            try {
                // Handle nested fields (e.g., "courseModule.credits")
                String[] fieldParts = valueFieldName.split("\\.");
                Object fieldValue = item;
                
                for (String part : fieldParts) {
                    Field nestedField = fieldValue.getClass().getDeclaredField(part);
                    nestedField.setAccessible(true);
                    fieldValue = nestedField.get(fieldValue);
                    
                    if (fieldValue == null) break;
                }
                
                if (fieldValue instanceof Number) {
                    sum += ((Number) fieldValue).doubleValue();
                }
            } catch (NoSuchFieldException e) {
                logger.warning("Field not found: " + e.getMessage());
            }
        }
        
        // Validate against min and max
        if (sum < annotation.min() || sum > annotation.max()) {
            String message = "Sum constraint violated: " + sum + " is not between " + 
                             annotation.min() + " and " + annotation.max();
            logger.warning(message);
            
            if (annotation.message() != null && !annotation.message().isEmpty()) {
                message = annotation.message();
            }
            
            throw new ConstraintViolationException(message, null);
        }
        
        logger.info("SumConstraint validation passed: sum = " + sum);
    }
}
*/
package org.vnu.sme.ocl2annos.validator;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.logging.Logger;

import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.annotation.SumConstraint_v_cu;

import jakarta.validation.ConstraintViolationException;

@Component
public class SumConstraintValidator implements BusinessRuleValidator<Object, SumConstraint_v_cu> {
    
    private static final Logger logger = Logger.getLogger(SumConstraintValidator.class.getName());

    @Override
    public void validate(Object entity, Field field, SumConstraint_v_cu annotation) throws ReflectiveOperationException {
        logger.info("Validating SumConstraint for entity: " + entity.getClass().getSimpleName());
        
        // Get collection field name from annotation or use default
        String collectionFieldName = annotation.collection();
        if (collectionFieldName.isEmpty()) {
            // Default collection field based on entity type
            if (entity.getClass().getSimpleName().equalsIgnoreCase("Student")) {
                collectionFieldName = "enrolments";
            } else {
                logger.warning("No collection field specified for @SumConstraint on " + entity.getClass().getSimpleName());
                return;
            }
        }
        
        // Get the collection to validate
        Field collectionField;
        try {
            collectionField = entity.getClass().getDeclaredField(collectionFieldName);
        } catch (NoSuchFieldException e) {
            logger.warning("Collection field not found: " + collectionFieldName);
            return;
        }
        
        collectionField.setAccessible(true);
        
        Object collectionObj = collectionField.get(entity);
        if (collectionObj == null) {
            // If collection is null, nothing to validate
            return;
        }
        
        if (!(collectionObj instanceof Collection)) {
            logger.warning("Field " + collectionFieldName + " is not a Collection");
            return;
        }
        
        Collection<?> collection = (Collection<?>) collectionObj;
        if (collection.isEmpty()) {
            // If collection is empty, nothing to validate
            return;
        }
        
        // Calculate sum
        double sum = 0;
        String valueFieldName = annotation.field();
        if (valueFieldName.isEmpty()) {
            // Default value field
            if (collection.iterator().next().getClass().getSimpleName().equalsIgnoreCase("Enrolment")) {
                valueFieldName = "courseModule.credits";
            } else {
                logger.warning("No value field specified for @SumConstraint");
                return;
            }
        }
        
        for (Object item : collection) {
            if (item == null) continue;
            
            try {
                // Handle nested fields (e.g., "courseModule.credits")
                String[] fieldParts = valueFieldName.split("\\.");
                Object fieldValue = item;
                
                for (String part : fieldParts) {
                    Field nestedField = fieldValue.getClass().getDeclaredField(part);
                    nestedField.setAccessible(true);
                    fieldValue = nestedField.get(fieldValue);
                    
                    if (fieldValue == null) break;
                }
                
                if (fieldValue instanceof Number) {
                    sum += ((Number) fieldValue).doubleValue();
                }
            } catch (NoSuchFieldException e) {
                logger.warning("Field not found: " + e.getMessage());
            }
        }
        
        // Validate against min and max
        if (sum < annotation.min() || sum > annotation.max()) {
            String message = "Tổng số tín chỉ (" + sum + ") vượt quá giới hạn cho phép (từ " + 
                           annotation.min() + " đến " + annotation.max() + ")";
            logger.warning(message);
            
            if (annotation.message() != null && !annotation.message().isEmpty()) {
                message = annotation.message();
            }
            
            throw new ConstraintViolationException(message, null);
        }
        
        logger.info("SumConstraint validation passed: sum = " + sum);
    }
}