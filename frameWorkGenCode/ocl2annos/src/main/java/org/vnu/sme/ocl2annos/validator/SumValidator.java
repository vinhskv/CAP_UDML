/*
package org.vnu.sme.ocl2annos.oclPattern.validate;

import org.vnu.sme.ocl2annos.oclPattern.annotation.Sum;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.List;

public class SumValidator implements BusinessRuleValidator<Sum, Object> {
    @Override
    public void validate(Object model, Field field, Sum annotation) throws ReflectiveOperationException {
        String[] refObjs = annotation.refObjs();
        String attr = annotation.attr();

        double sum = 0.0;

        for (String refObj : refObjs) {
            Field refField = model.getClass().getDeclaredField(refObj);
            refField.setAccessible(true);
            List<?> refList = (List<?>) refField.get(model);

            for (Object obj : refList) {
                Field attrField = obj.getClass().getDeclaredField(attr);
                attrField.setAccessible(true);
                sum += attrField.getDouble(obj);
            }
        }

        field.setAccessible(true);
        field.set(model, sum);
    }
}
*/
package org.vnu.sme.ocl2annos.validator;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.logging.Logger;

import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.annotation.Sum;

/**
 * Validator for the @Sum annotation
 * Calculates the sum of values from a collection and sets it to the annotated field
 */
@Component
public class SumValidator implements BusinessRuleValidator<Object, Sum> {
    
    private static final Logger logger = Logger.getLogger(SumValidator.class.getName());

    @Override
    public void validate(Object entity, Field field, Sum annotation) throws ReflectiveOperationException {
        if (field == null) {
            logger.warning("Field cannot be null for @Sum annotation");
            return;
        }
        
        // Make field accessible
        field.setAccessible(true);
        
        // Initialize with default value in case of error
        setDefaultValue(entity, field);
        
        try {
            // Get the collection to sum from
            Field collectionField = entity.getClass().getDeclaredField(annotation.collection());
            collectionField.setAccessible(true);
            
            Object collectionObj = collectionField.get(entity);
            if (collectionObj == null) {
                // If collection is null, keep default value
                logger.fine("Collection is null for " + field.getName());
                return;
            }
            
            if (!(collectionObj instanceof Collection)) {
                logger.warning("Field " + annotation.collection() + " is not a Collection");
                return;
            }
            
            Collection<?> collection = (Collection<?>) collectionObj;
            if (collection.isEmpty()) {
                // If collection is empty, keep default value
                logger.fine("Collection is empty for " + field.getName());
                return;
            }
            
            // Calculate sum
            double sum = 0;
            for (Object item : collection) {
                if (item == null) continue;
                
                try {
                    // Handle nested properties (e.g., "courseModule.credits")
                    String[] fieldPath = annotation.field().split("\\.");
                    Object currentObj = item;
                    
                    for (String fieldName : fieldPath) {
                        if (currentObj == null) break;
                        
                        Field nestedField = currentObj.getClass().getDeclaredField(fieldName);
                        nestedField.setAccessible(true);
                        currentObj = nestedField.get(currentObj);
                    }
                    
                    if (currentObj instanceof Number) {
                        sum += ((Number) currentObj).doubleValue();
                    }
                } catch (NoSuchFieldException e) {
                    logger.warning("Field path " + annotation.field() + " not found in " + item.getClass().getName());
                } catch (NullPointerException e) {
                    logger.warning("Null reference in field path " + annotation.field() + " for " + item.getClass().getName());
                }
            }
            
            // Set the calculated sum to the annotated field
            setFieldValue(entity, field, sum);
            
            logger.fine("Calculated sum: " + sum + " for field " + field.getName());
            
        } catch (Exception e) {
            logger.warning("Error calculating sum for " + field.getName() + ": " + e.getMessage());
            // Keep default value set earlier
        }
    }
    
    private void setDefaultValue(Object entity, Field field) throws IllegalAccessException {
        Class<?> fieldType = field.getType();
        
        if (fieldType == Integer.class || fieldType == int.class) {
            field.set(entity, 0);
        } else if (fieldType == Double.class || fieldType == double.class) {
            field.set(entity, 0.0);
        } else if (fieldType == Float.class || fieldType == float.class) {
            field.set(entity, 0.0f);
        } else if (fieldType == Long.class || fieldType == long.class) {
            field.set(entity, 0L);
        } else {
            // For other types, set to null
            field.set(entity, null);
        }
    }
    
    private void setFieldValue(Object entity, Field field, double value) throws IllegalAccessException {
        Class<?> fieldType = field.getType();
        
        if (fieldType == Integer.class || fieldType == int.class) {
            field.set(entity, (int) value);
        } else if (fieldType == Double.class || fieldType == double.class) {
            field.set(entity, value);
        } else if (fieldType == Float.class || fieldType == float.class) {
            field.set(entity, (float) value);
        } else if (fieldType == Long.class || fieldType == long.class) {
            field.set(entity, (long) value);
        } else {
            // For other types, try to set as Double
            field.set(entity, value);
        }
    }
}