/*
package org.vnu.sme.ocl2annos.oclPattern.util;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.oclPattern.validate.OCLProcessor;

import jakarta.persistence.PostLoad;
import jakarta.persistence.PostPersist;
import jakarta.persistence.PostUpdate;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;

@Component
public class EntityManagerListener {
    
    private static final Logger logger = Logger.getLogger(EntityManagerListener.class.getName());
    
    private static OCLProcessor oclProcessor;
    
    @Autowired
    public void setOCLProcessor(OCLProcessor oclProcessor) {
        EntityManagerListener.oclProcessor = oclProcessor;
        logger.info("EntityManagerListener initialized with OCLProcessor: " + (oclProcessor != null ? "not null" : "null"));
    }
    

    @PrePersist
    @PreUpdate
    public void prePersist(Object entity) {
        logger.fine("PrePersist/PreUpdate event for: " + entity.getClass().getSimpleName());
        processEntity(entity);
    }
    
   
    @PostLoad
    public void postLoad(Object entity) {
        logger.fine("PostLoad event for: " + entity.getClass().getSimpleName());
        processEntity(entity);
    }
    

    @PostPersist
    @PostUpdate
    public void postPersist(Object entity) {
        logger.fine("PostPersist/PostUpdate event for: " + entity.getClass().getSimpleName());
        processEntity(entity);
    }
    
   
    private void processEntity(Object entity) {
        if (oclProcessor == null) {
            logger.warning("OCLProcessor is null in EntityManagerListener for " + entity.getClass().getSimpleName());
            return;
        }
        
        try {
            oclProcessor.process(entity);
            logger.fine("Successfully processed entity: " + entity.getClass().getSimpleName());
        } catch (Exception e) {
            logger.severe("Error processing entity: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
*/
package org.vnu.sme.ocl2annos.listener;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.processor.AnnotationProcessor;

import jakarta.persistence.PostLoad;
import jakarta.persistence.PostPersist;
import jakarta.persistence.PostUpdate;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;

@Component
public class EntityListener {
    
    private static final Logger logger = Logger.getLogger(EntityListener.class.getName());
    
    private static AnnotationProcessor annotationProcessor;
    
	/*
	 * @Autowired public void setAnnotationProcessor(AnnotationProcessor
	 * annotationProcessor) { EntityListener.annotationProcessor =
	 * annotationProcessor;
	 * logger.info("EntityManagerListener initialized with annotationProcessor: " +
	 * (annotationProcessor != null ? "not null" : "null")); }
	 */
    public static void setAnnotationProcessor(AnnotationProcessor processor) {
        EntityListener.annotationProcessor = processor;
    }
    
    /**
     * Validate entity before it's saved to ensure constraints are met
     */
    @PrePersist
    @PreUpdate
    public void prePersist(Object entity) {
        logger.fine("PrePersist/PreUpdate event for: " + entity.getClass().getSimpleName());
        validateEntity(entity);
    }
    
    /**
     * Process entity after it's loaded to calculate derived fields
     */
    @PostLoad
    public void postLoad(Object entity) {
        logger.fine("PostLoad event for: " + entity.getClass().getSimpleName());
        processEntity(entity);
    }
    
    /**
     * Validate and process entity after it's saved to recalculate any derived values
     */
    @PostPersist
    @PostUpdate
    public void postPersist(Object entity) {
        logger.fine("PostPersist/PostUpdate event for: " + entity.getClass().getSimpleName());
        processEntity(entity);
    }
    
    /**
     * Validate entity using OCL processor
     * Throws ConstraintViolationException if validation fails
     */
    private void validateEntity(Object entity) {
        if (annotationProcessor == null) {
            logger.warning("OCLProcessor is null in EntityManagerListener for " + entity.getClass().getSimpleName());
            return;
        }
        
        try {
            // This will trigger validation
        	annotationProcessor.validate(entity);
            logger.fine("Successfully validated entity: " + entity.getClass().getSimpleName());
        } catch (Exception e) {
            logger.severe("Validation error for entity: " + e.getMessage());
            throw e; // Rethrow to prevent save/update
        }
    }
    
    
    /**
     * Process entity using OCL processor for calculations
     */
    private void processEntity(Object entity) {
        if (annotationProcessor == null) {
            logger.warning("OCLProcessor is null in EntityManagerListener for " + entity.getClass().getSimpleName());
            return;
        }
        
        try {
        	annotationProcessor.process(entity);
            logger.fine("Successfully processed entity: " + entity.getClass().getSimpleName());
        } catch (Exception e) {
            logger.severe("Error processing entity: " + e.getMessage());
            e.printStackTrace();
        }
    }
}