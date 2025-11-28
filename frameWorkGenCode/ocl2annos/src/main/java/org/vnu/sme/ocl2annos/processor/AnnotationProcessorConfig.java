/*package org.vnu.sme.ocl2annos.oclPattern.validate;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.vnu.sme.ocl2annos.oclPattern.annotation.AverageConstraint;
import org.vnu.sme.ocl2annos.oclPattern.annotation.Sum;
import org.vnu.sme.ocl2annos.oclPattern.annotation.SumConstraint;
import org.vnu.sme.ocl2annos.oclPattern.annotation.SumProduct;
import org.vnu.sme.ocl2annos.oclPattern.util.ConstraintListener;

import jakarta.annotation.PostConstruct;

@Configuration
public class OCLConfig {
    
    private static final Logger logger = Logger.getLogger(OCLConfig.class.getName());

    @Bean
    public OCLProcessor oclProcessor() {
        Map<Class<?>, BusinessRuleValidator<?, ?>> validators = new HashMap<>();
        
        // Ép kiểu để đảm bảo tương thích với Map
        validators.put(Sum.class, (BusinessRuleValidator<?, ?>) sumValidator());
        validators.put(SumProduct.class, (BusinessRuleValidator<?, ?>) sumProductValidator());
        validators.put(SumConstraint.class, (BusinessRuleValidator<?, ?>) sumConstraintValidator());
        validators.put(AverageConstraint.class, (BusinessRuleValidator<?, ?>) averageConstraintValidator());
        
        logger.info("Creating OCLProcessor bean with validators: " + validators.keySet());
        return new OCLProcessor(validators);
    }
    
    @Bean
    public ConstraintListener constraintListener() {
        return new ConstraintListener(oclProcessor());
    }
    
    @Bean
    public SumConstraintValidator sumConstraintValidator() {
        return new SumConstraintValidator();
    }
    
    @Bean
    public AverageConstraintValidator averageConstraintValidator() {
        return new AverageConstraintValidator();
    }
    
    @Bean
    public SumValidator sumValidator() {
        return new SumValidator();
    }
    
    @Bean
    public SumProductValidator sumProductValidator() {
        return new SumProductValidator();
    }
    
    @PostConstruct
    public void initializeOCLSystem() {
        logger.info("=============================================");
        logger.info("OCL annotation validation system initialized");
        logger.info("=============================================");
        logger.info("Field Calculators:");
        logger.info(" - Sum: " + sumValidator().getClass().getSimpleName());
        logger.info(" - SumProduct: " + sumProductValidator().getClass().getSimpleName());
        logger.info("Constraint Validators:");
        logger.info(" - AverageConstraint: " + averageConstraintValidator().getClass().getSimpleName());
        logger.info(" - SumConstraint: " + sumConstraintValidator().getClass().getSimpleName());
        logger.info("=============================================");
    }
}*/
package org.vnu.sme.ocl2annos.processor;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.vnu.sme.ocl2annos.annotation.AverageConstraint;
import org.vnu.sme.ocl2annos.annotation.Sum;
import org.vnu.sme.ocl2annos.annotation.SumConstraint_v_cu;
import org.vnu.sme.ocl2annos.annotation.SumProduct_v_cu;
import org.vnu.sme.ocl2annos.listener.ConstraintListener;
import org.vnu.sme.ocl2annos.validator.AverageConstraintValidator;
import org.vnu.sme.ocl2annos.validator.BusinessRuleValidator;
import org.vnu.sme.ocl2annos.validator.SumConstraintValidator;
import org.vnu.sme.ocl2annos.validator.SumProductValidator;
import org.vnu.sme.ocl2annos.validator.SumValidator;

import jakarta.annotation.PostConstruct;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

@Configuration
public class AnnotationProcessorConfig {
    
    private static final Logger logger = Logger.getLogger(AnnotationProcessorConfig.class.getName());

    @Bean
    public AnnotationProcessor oclProcessor() {
        Map<Class<?>, BusinessRuleValidator<?, ?>> validators = new HashMap<>();
        
        // Ép kiểu để đảm bảo tương thích với Map
        validators.put(Sum.class, (BusinessRuleValidator<?, ?>) sumValidator());
        validators.put(SumProduct_v_cu.class, (BusinessRuleValidator<?, ?>) sumProductValidator());
        validators.put(SumConstraint_v_cu.class, (BusinessRuleValidator<?, ?>) sumConstraintValidator());
        validators.put(AverageConstraint.class, (BusinessRuleValidator<?, ?>) averageConstraintValidator());
        
        logger.info("Creating OCLProcessor bean with validators: " + validators.keySet());
        return new AnnotationProcessor(validators);
    }
    
    @Bean
    public ConstraintListener constraintListener() {
        return new ConstraintListener(oclProcessor());
    }
    
    @Bean
    public SumConstraintValidator sumConstraintValidator() {
        return new SumConstraintValidator();
    }
    
    @Bean
    public AverageConstraintValidator averageConstraintValidator() {
        return new AverageConstraintValidator();
    }
    
    @Bean
    public SumValidator sumValidator() {
        return new SumValidator();
    }
    
    @Bean
    public SumProductValidator sumProductValidator() {
        return new SumProductValidator();
    }
    
    @PostConstruct
    public void initializeOCLSystem() {
        logger.info("=============================================");
        logger.info("OCL annotation validation system initialized");
        logger.info("=============================================");
        logger.info("Field Calculators:");
        logger.info(" - Sum: " + sumValidator().getClass().getSimpleName());
        logger.info(" - SumProduct: " + sumProductValidator().getClass().getSimpleName());
        logger.info("Constraint Validators:");
        logger.info(" - AverageConstraint: " + averageConstraintValidator().getClass().getSimpleName());
        logger.info(" - SumConstraint: " + sumConstraintValidator().getClass().getSimpleName());
        logger.info("=============================================");
    }
}
