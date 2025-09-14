/*
package org.vnu.sme.ocl2annos.oclPattern.validate;

import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.oclPattern.annotation.AverageConstraint;
import org.vnu.sme.ocl2annos.oclPattern.annotation.Sum;
import org.vnu.sme.ocl2annos.oclPattern.annotation.SumConstraint;
import org.vnu.sme.ocl2annos.oclPattern.annotation.SumProduct;

import java.lang.reflect.Field;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

@Component
public class OCLProcessor {
    
    private static final Logger logger = Logger.getLogger(OCLProcessor.class.getName());
    
    private final Map<Class<?>, BusinessRuleValidator<?, ?>> validators;

    public OCLProcessor(Map<Class<?>, BusinessRuleValidator<?, ?>> validators) {
        this.validators = validators;
        if (validators == null || validators.isEmpty()) {
            logger.warning("OCLProcessor initialized with empty or null validators map");
        } else {
            logger.info("OCLProcessor initialized with validators: " + validators.keySet());
        }
    }

    public void process(Object entity) {
        if (entity == null) {
            logger.warning("Attempted to process null entity");
            return;
        }
        
        logger.info("Processing entity for OCL constraints: " + entity.getClass().getSimpleName());
        
        try {
            // First process field annotations for calculations
            processFieldAnnotations(entity);
            
            // Then process class annotations for validations
            processClassAnnotations(entity);
            
            logger.info("Successfully processed OCL constraints for: " + entity.getClass().getSimpleName());
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Error processing OCL constraints: " + e.getMessage(), e);
            throw new RuntimeException("OCL constraint processing error: " + e.getMessage(), e);
        }
    }
    
    @SuppressWarnings({"unchecked", "rawtypes"})
    private void processClassAnnotations(Object entity) {
        if (validators == null) {
            logger.severe("Validators map is null, cannot process class annotations");
            return;
        }
        
        Class<?> entityClass = entity.getClass();
        
        try {
            // Process SumConstraint annotation
            SumConstraint sumConstraint = entityClass.getAnnotation(SumConstraint.class);
            if (sumConstraint != null) {
                BusinessRuleValidator validator = validators.get(SumConstraint.class);
                if (validator != null) {
                    logger.fine("Validating SumConstraint for entity: " + entityClass.getSimpleName());
                    try {
                        validator.validate(entity, null, sumConstraint);
                    } catch (ReflectiveOperationException e) {
                        logger.log(Level.SEVERE, "Error validating SumConstraint: " + e.getMessage(), e);
                        throw new RuntimeException("Error validating SumConstraint: " + e.getMessage(), e);
                    }
                } else {
                    logger.warning("No validator found for SumConstraint annotation on: " + entityClass.getSimpleName());
                }
            }
            
            // Process AverageConstraint annotation
            AverageConstraint averageConstraint = entityClass.getAnnotation(AverageConstraint.class);
            if (averageConstraint != null) {
                BusinessRuleValidator validator = validators.get(AverageConstraint.class);
                if (validator != null) {
                    logger.fine("Validating AverageConstraint for entity: " + entityClass.getSimpleName());
                    try {
                        validator.validate(entity, null, averageConstraint);
                    } catch (ReflectiveOperationException e) {
                        logger.log(Level.SEVERE, "Error validating AverageConstraint: " + e.getMessage(), e);
                        throw new RuntimeException("Error validating AverageConstraint: " + e.getMessage(), e);
                    }
                } else {
                    logger.warning("No validator found for AverageConstraint annotation on: " + entityClass.getSimpleName());
                }
            }
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Error processing class annotations: " + e.getMessage(), e);
            throw new RuntimeException("Error processing class annotations: " + e.getMessage(), e);
        }
    }
    
    @SuppressWarnings({"unchecked", "rawtypes"})
    private void processFieldAnnotations(Object entity) {
        if (validators == null) {
            logger.severe("Validators map is null, cannot process field annotations");
            return;
        }
        
        Class<?> entityClass = entity.getClass();
        
        for (Field field : entityClass.getDeclaredFields()) {
            try {
                // Process Sum annotation
                Sum sumAnnotation = field.getAnnotation(Sum.class);
                if (sumAnnotation != null) {
                    BusinessRuleValidator validator = validators.get(Sum.class);
                    if (validator != null) {
                        logger.fine("Processing @Sum annotation on field: " + field.getName());
                        validator.validate(entity, field, sumAnnotation);
                    } else {
                        logger.warning("No validator found for @Sum annotation on field: " + field.getName());
                    }
                }
                
                // Process SumProduct annotation
                SumProduct sumProductAnnotation = field.getAnnotation(SumProduct.class);
                if (sumProductAnnotation != null) {
                    BusinessRuleValidator validator = validators.get(SumProduct.class);
                    if (validator != null) {
                        logger.fine("Processing @SumProduct annotation on field: " + field.getName());
                        validator.validate(entity, field, sumProductAnnotation);
                    } else {
                        logger.warning("No validator found for @SumProduct annotation on field: " + field.getName());
                    }
                }
            } catch (Exception e) {
                logger.log(Level.SEVERE, "Error processing field annotation on " + field.getName() + ": " + e.getMessage(), e);
                throw new RuntimeException("Error processing field annotation: " + e.getMessage(), e);
            }
        }
    }
}
*/
package org.vnu.sme.ocl2annos.processor;

import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.annotation.AverageConstraint;
import org.vnu.sme.ocl2annos.annotation.Sum;
import org.vnu.sme.ocl2annos.annotation.SumConstraint_v_cu;
import org.vnu.sme.ocl2annos.annotation.SumProduct_v_cu;
import org.vnu.sme.ocl2annos.validator.BusinessRuleValidator;

import java.lang.reflect.Field;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

@Component
public class AnnotationProcessor {
    
    private static final Logger logger = Logger.getLogger(AnnotationProcessor.class.getName());
    
    private final Map<Class<?>, BusinessRuleValidator<?, ?>> validators;

    public AnnotationProcessor(Map<Class<?>, BusinessRuleValidator<?, ?>> validators) {
        this.validators = validators;
        if (validators == null || validators.isEmpty()) {
            logger.warning("OCLProcessor initialized with empty or null validators map");
        } else {
            logger.info("OCLProcessor initialized with validators: " + validators.keySet());
        }
    }

    /**
     * Process entity for calculations
     */
    public void process(Object entity) {
        if (entity == null) {
            logger.warning("Attempted to process null entity");
            return;
        }
        
        logger.info("Processing entity for OCL constraints: " + entity.getClass().getSimpleName());
        
        try {
            // First process field annotations for calculations
            processFieldAnnotations(entity);
            
            logger.info("Successfully processed OCL constraints for: " + entity.getClass().getSimpleName());
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Error processing OCL constraints: " + e.getMessage(), e);
            throw new RuntimeException("OCL constraint processing error: " + e.getMessage(), e);
        }
    }
    
    /**
     * Validate entity against constraints
     * This will throw ConstraintViolationException if validation fails
     */
    public void validate(Object entity) {
        if (entity == null) {
            logger.warning("Attempted to validate null entity");
            return;
        }
        
        logger.info("Validating entity: " + entity.getClass().getSimpleName());
        
        try {
            // Process class annotations for validations
            processClassAnnotations(entity);
            
            logger.info("Successfully validated entity: " + entity.getClass().getSimpleName());
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Error validating entity: " + e.getMessage(), e);
            throw e; // Rethrow to prevent save/update
        }
    }
    
    @SuppressWarnings({"unchecked", "rawtypes"})
    private void processClassAnnotations(Object entity) {
        if (validators == null) {
            logger.severe("Validators map is null, cannot process class annotations");
            return;
        }
        
        Class<?> entityClass = entity.getClass();
        
        try {
            // Process SumConstraint annotation
            SumConstraint_v_cu sumConstraint = entityClass.getAnnotation(SumConstraint_v_cu.class);
            if (sumConstraint != null) {
                BusinessRuleValidator validator = validators.get(SumConstraint_v_cu.class);
                if (validator != null) {
                    logger.fine("Validating SumConstraint for entity: " + entityClass.getSimpleName());
                    try {
                        validator.validate(entity, null, sumConstraint);
                    } catch (ReflectiveOperationException e) {
                        logger.log(Level.SEVERE, "Error validating SumConstraint: " + e.getMessage(), e);
                        throw new RuntimeException("Error validating SumConstraint: " + e.getMessage(), e);
                    }
                } else {
                    logger.warning("No validator found for SumConstraint annotation on: " + entityClass.getSimpleName());
                }
            }
            
            // Process AverageConstraint annotation
            AverageConstraint averageConstraint = entityClass.getAnnotation(AverageConstraint.class);
            if (averageConstraint != null) {
                BusinessRuleValidator validator = validators.get(AverageConstraint.class);
                if (validator != null) {
                    logger.fine("Validating AverageConstraint for entity: " + entityClass.getSimpleName());
                    try {
                        validator.validate(entity, null, averageConstraint);
                    } catch (ReflectiveOperationException e) {
                        logger.log(Level.SEVERE, "Error validating AverageConstraint: " + e.getMessage(), e);
                        throw new RuntimeException("Error validating AverageConstraint: " + e.getMessage(), e);
                    }
                } else {
                    logger.warning("No validator found for AverageConstraint annotation on: " + entityClass.getSimpleName());
                }
            }
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Error processing class annotations: " + e.getMessage(), e);
            throw new RuntimeException("Error processing class annotations: " + e.getMessage(), e);
        }
    }
    
    @SuppressWarnings({"unchecked", "rawtypes"})
    private void processFieldAnnotations(Object entity) {
        if (validators == null) {
            logger.severe("Validators map is null, cannot process field annotations");
            return;
        }
        
        Class<?> entityClass = entity.getClass();
        
        for (Field field : entityClass.getDeclaredFields()) {
            try {
                // Process Sum annotation
                Sum sumAnnotation = field.getAnnotation(Sum.class);
                if (sumAnnotation != null) {
                    BusinessRuleValidator validator = validators.get(Sum.class);
                    if (validator != null) {
                        logger.fine("Processing @Sum annotation on field: " + field.getName());
                        validator.validate(entity, field, sumAnnotation);
                    } else {
                        logger.warning("No validator found for @Sum annotation on field: " + field.getName());
                    }
                }
                
                // Process SumProduct annotation
                SumProduct_v_cu sumProductAnnotation = field.getAnnotation(SumProduct_v_cu.class);
                if (sumProductAnnotation != null) {
                    BusinessRuleValidator validator = validators.get(SumProduct_v_cu.class);
                    if (validator != null) {
                        logger.fine("Processing @SumProduct annotation on field: " + field.getName());
                        validator.validate(entity, field, sumProductAnnotation);
                    } else {
                        logger.warning("No validator found for @SumProduct annotation on field: " + field.getName());
                    }
                }
            } catch (Exception e) {
                logger.log(Level.SEVERE, "Error processing field annotation on " + field.getName() + ": " + e.getMessage(), e);
                throw new RuntimeException("Error processing field annotation: " + e.getMessage(), e);
            }
        }
    }
}
