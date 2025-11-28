/*
package org.vnu.sme.ocl2annos.oclPattern.validate;

import org.vnu.sme.ocl2annos.oclPattern.annotation.SumProduct;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.List;

public class SumProductValidator implements BusinessRuleValidator<SumProduct, Object> {
    @Override
    public void validate(Object model, Field field, SumProduct annotation) throws ReflectiveOperationException {
        String[] refObjs = annotation.refObjs();
        String[] attrs = annotation.attrs();

        if (attrs.length != 2) {
            throw new IllegalArgumentException("SumProduct must have exactly 2 attributes");
        }

        String attr1 = attrs[0];
        String attr2 = attrs[1];

        double sumProduct = 0.0;

        for (String refObj : refObjs) {
            Field refField = model.getClass().getDeclaredField(refObj);
            refField.setAccessible(true);
            List<?> refList = (List<?>) refField.get(model);

            for (Object obj : refList) {
                Field attrField1 = obj.getClass().getDeclaredField(attr1);
                Field attrField2 = obj.getClass().getDeclaredField(attr2);
                attrField1.setAccessible(true);
                attrField2.setAccessible(true);

                double value1 = attrField1.getDouble(obj);
                double value2 = attrField2.getDouble(obj);
                sumProduct += value1 * value2;
            }
        }

        field.setAccessible(true);
        field.set(model, sumProduct);
    }
}
*/
package org.vnu.sme.ocl2annos.validator;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.logging.Logger;

import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.annotation.SumProduct_v_cu;

/**
 * Validator for the @SumProduct annotation
 * Calculates the sum of products of two fields for each item in a collection
 */
@Component
public class SumProductValidator implements BusinessRuleValidator<Object, SumProduct_v_cu> {
    
    private static final Logger logger = Logger.getLogger(SumProductValidator.class.getName());

    @Override
    public void validate(Object entity, Field field, SumProduct_v_cu annotation) throws ReflectiveOperationException {
        if (field == null) {
            logger.warning("Field cannot be null for @SumProduct annotation");
            return;
        }
        
        // Make field accessible
        field.setAccessible(true);
        
        // Initialize with default value in case of error
        setDefaultValue(entity, field);
        
        try {
            // Get the collection to process
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
            
            // Calculate sum of products
            double result = 0;
            for (Object item : collection) {
                if (item == null) continue;
                
                try {
                    // Handle nested properties for first field (e.g., "finalGrade")
                    String[] fieldPath1 = annotation.field1().split("\\.");
                    Object value1 = getNestedFieldValue(item, fieldPath1);
                    
                    // Handle nested properties for second field (e.g., "courseModule.credits")
                    String[] fieldPath2 = annotation.field2().split("\\.");
                    Object value2 = getNestedFieldValue(item, fieldPath2);
                    
                    if (value1 instanceof Number && value2 instanceof Number) {
                        double v1 = ((Number) value1).doubleValue();
                        double v2 = ((Number) value2).doubleValue();
                        result += v1 * v2;
                    }
                } catch (NoSuchFieldException e) {
                    logger.warning("Field not found in " + item.getClass().getName() + ": " + e.getMessage());
                } catch (NullPointerException e) {
                    logger.warning("Null reference in field path for " + item.getClass().getName() + ": " + e.getMessage());
                }
            }
            
            // Set the calculated result to the annotated field
            setFieldValue(entity, field, result);
            
            logger.fine("Calculated sum of products: " + result + " for field " + field.getName());
            
        } catch (Exception e) {
            logger.warning("Error calculating sum of products for " + field.getName() + ": " + e.getMessage());
            // Keep default value set earlier
        }
    }
    
    /**
     * Get nested field value by traversing the field path
     */
    private Object getNestedFieldValue(Object obj, String[] fieldPath) throws NoSuchFieldException, IllegalAccessException {
        Object currentObj = obj;
        
        for (String fieldName : fieldPath) {
            if (currentObj == null) return null;
            
            Field nestedField = currentObj.getClass().getDeclaredField(fieldName);
            nestedField.setAccessible(true);
            currentObj = nestedField.get(currentObj);
        }
        
        return currentObj;
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
