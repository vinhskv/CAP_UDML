/*package org.vnu.sme.ocl2annos.oclPattern.util;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;

import org.vnu.sme.ocl2annos.oclPattern.validate.OCLProcessor;

public class ConstraintListener implements PropertyChangeListener {
    private final OCLProcessor processor;

    public ConstraintListener(OCLProcessor processor) {
        this.processor = processor;
    }

    @Override
    public void propertyChange(PropertyChangeEvent evt) {
        Object entity = evt.getSource();
        processor.process(entity);
    }
}
*/
package org.vnu.sme.ocl2annos.listener;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.processor.AnnotationProcessor;

/**
 * Listener that processes OCL constraints when entity changes
 */
@Component
public class ConstraintListener implements PropertyChangeListener {
    
    private static final Logger logger = Logger.getLogger(ConstraintListener.class.getName());
    
    private final AnnotationProcessor oclProcessor;
    
    @Autowired
    public ConstraintListener(AnnotationProcessor oclProcessor) {
        this.oclProcessor = oclProcessor;
        logger.info("ConstraintListener initialized with OCLProcessor: " + (oclProcessor != null ? "not null" : "null"));
    }

    @Override
    public void propertyChange(PropertyChangeEvent evt) {
        logger.info("Property change detected: " + evt.getPropertyName());
        
        Object entity = evt.getNewValue();
        if (entity == null) {
            logger.warning("Entity is null in property change event");
            return;
        }
        
        logger.info("Processing OCL constraints for: " + entity.getClass().getSimpleName());
        
        if (oclProcessor != null) {
            try {
                oclProcessor.process(entity);
                logger.info("Successfully processed OCL constraints for: " + entity.getClass().getSimpleName());
            } catch (Exception e) {
                logger.severe("Error processing OCL constraints: " + e.getMessage());
                e.printStackTrace();
            }
        } else {
            logger.severe("OCLProcessor is null, cannot process constraints");
        }
    }
}