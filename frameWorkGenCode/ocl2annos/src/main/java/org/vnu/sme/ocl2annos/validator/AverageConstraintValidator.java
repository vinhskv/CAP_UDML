/*package org.vnu.sme.ocl2annos.oclPattern.validate;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import java.lang.reflect.Field;

import org.vnu.sme.ocl2annos.oclPattern.annotation.AverageConstraint;

public class AverageConstraintValidator 
    implements BusinessRuleValidator<AverageConstraint, Object>, ConstraintValidator<AverageConstraint, Object> {

    private double max;

    @Override
    public void initialize(AverageConstraint constraint) {
        this.max = constraint.max();
    }

    @Override
    public void validate(Object model, Field field, AverageConstraint annotation) 
        throws ReflectiveOperationException {
        Field sumProductField = model.getClass().getDeclaredField("sumProduct");
        Field totalCreditsField = model.getClass().getDeclaredField("totalCredits");

        sumProductField.setAccessible(true);
        totalCreditsField.setAccessible(true);

        Double sumProduct = (Double) sumProductField.get(model);
        Double totalCredits = (Double) totalCreditsField.get(model);
        double average = (totalCredits > 0) ? sumProduct / totalCredits : 0.0;

        if (average > annotation.max()) {
            throw new IllegalArgumentException("AverageConstraint violated: " + average);
        }
    }

    @Override
    public boolean isValid(Object obj, ConstraintValidatorContext context) {
        try {
            Field sumProductField = obj.getClass().getDeclaredField("sumProduct");
            Field totalCreditsField = obj.getClass().getDeclaredField("totalCredits");

            sumProductField.setAccessible(true);
            totalCreditsField.setAccessible(true);

            Double sumProduct = (Double) sumProductField.get(obj);
            Double totalCredits = (Double) totalCreditsField.get(obj);
            double average = (totalCredits > 0) ? sumProduct / totalCredits : 0.0;

            return average <= max;
        } catch (NoSuchFieldException | IllegalAccessException e) {
            return false;
        }
    }
}
*/
package org.vnu.sme.ocl2annos.validator;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.logging.Logger;

import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.annotation.AverageConstraint;

import jakarta.validation.ConstraintViolationException;

/**
 * Validator for the @AverageConstraint annotation
 * Validates that the average of values in a collection is within specified min and max values
 */
@Component
public class AverageConstraintValidator implements BusinessRuleValidator<Object, AverageConstraint> {
    
    private static final Logger logger = Logger.getLogger(AverageConstraintValidator.class.getName());

    @Override
    public void validate(Object entity, Field field, AverageConstraint annotation) throws ReflectiveOperationException {
        logger.info("Validating AverageConstraint for entity: " + entity.getClass().getSimpleName());
        
        // Get collection field name from annotation or use default
        String collectionFieldName = annotation.collection();
        if (collectionFieldName.isEmpty()) {
            // Default collection field based on entity type
            if (entity.getClass().getSimpleName().equalsIgnoreCase("Student")) {
                collectionFieldName = "enrolments";
            } else {
                logger.warning("No collection field specified for @AverageConstraint on " + entity.getClass().getSimpleName());
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
        
        // Calculate sum and count
        double sum = 0;
        int count = 0;
        String valueFieldName = annotation.field();
        if (valueFieldName.isEmpty()) {
            // Default value field
            if (collection.iterator().next().getClass().getSimpleName().equalsIgnoreCase("Enrolment")) {
                valueFieldName = "finalGrade";
            } else {
                logger.warning("No value field specified for @AverageConstraint");
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
                    count++;
                }
            } catch (NoSuchFieldException e) {
                logger.warning("Field not found: " + e.getMessage());
            }
        }
        
        // Calculate average
        if (count == 0) {
            logger.info("No valid numeric values found for averaging");
            return;
        }
        
        double average = sum / count;
        
        // Validate against min and max
        if (average < annotation.min() || average > annotation.max()) {
            String message = "Average constraint violated: " + average + " is not between " + 
                             annotation.min() + " and " + annotation.max();
            logger.warning(message);
            
            if (annotation.message() != null && !annotation.message().isEmpty()) {
                message = annotation.message();
            }
            
            throw new ConstraintViolationException(message, null);
        }
        
        logger.info("AverageConstraint validation passed: average = " + average);
    }
}