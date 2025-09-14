package org.vnu.sme.ocl2annos.config;

import org.vnu.sme.ocl2annos.annotation.*;
import org.vnu.sme.ocl2annos.processor.AnnotationProcessor;
import org.vnu.sme.ocl2annos.validator.*;
import org.vnu.sme.ocl2annos.listener.EntityListener;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import jakarta.annotation.PostConstruct;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

/**
 * Spring configuration for setting up the annotation triggers framework.
 */
@Configuration
public class TriggerConfig {
    
    private static final Logger logger = Logger.getLogger(TriggerConfig.class.getName());

    @Bean
    public AnnotationProcessor annotationProcessor() {
        Map<Class<?>, BusinessRuleValidator<?, ?>> validators = new HashMap<>();
        
        // Register validators
        validators.put(Sum.class, (BusinessRuleValidator<?, ?>) sumValidator());
        validators.put(SumProduct_v_cu.class, (BusinessRuleValidator<?, ?>) sumProductValidator());
        validators.put(SumConstraint_v_cu.class, (BusinessRuleValidator<?, ?>) sumConstraintValidator());
        validators.put(AverageConstraint.class, (BusinessRuleValidator<?, ?>) averageConstraintValidator());
        
        AnnotationProcessor processor = new AnnotationProcessor(validators);
        
        // Configure EntityListener with the processor
        EntityListener.setAnnotationProcessor(processor);
        
        return processor;
    }
    
    @Bean
    public SumValidator sumValidator() {
        return new SumValidator();
    }
    
    @Bean
    @Primary
    public SumProductValidator sumProductValidator() {
        return new SumProductValidator();
    }
    
    @Bean
    public SumConstraintValidator sumConstraintValidator() {
        return new SumConstraintValidator();
    }
    
    @Bean
    public AverageConstraintValidator averageConstraintValidator() {
        return new AverageConstraintValidator();
    }
    
    @PostConstruct
    public void initFramework() {
        logger.info("Annotation Triggers Framework initialized successfully");
        logger.info("Registered validators: " + 
                   "Sum, SumProduct, SumConstraint, AverageConstraint");
    }
}