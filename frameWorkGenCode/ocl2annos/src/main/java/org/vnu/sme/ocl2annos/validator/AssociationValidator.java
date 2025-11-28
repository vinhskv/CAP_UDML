package org.vnu.sme.ocl2annos.validator;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import org.vnu.sme.ocl2annos.annotation.AssociationPattern;
import org.vnu.sme.ocl2annos.listener.AssociationListener;
import org.vnu.sme.ocl2annos.observable.AssociationObservable;
import org.vnu.sme.ocl2annos.processor.AssociationProcessor;

public class AssociationValidator implements AssociationListener {
    
    private Map<Object, Map<String, AssociationPatternInfo>> objectValidationMap = new HashMap<>();
    
    // Inner class to store validation information
    private static class AssociationPatternInfo {
        String name;
        int minOccurs;
        int maxOccurs;
        String message;
        String collection2;  // For patterns with two collections
        
        public AssociationPatternInfo(String name, int minOccurs, int maxOccurs, 
                                    String message, String collection2) {
            this.name = name;
            this.minOccurs = minOccurs;
            this.maxOccurs = maxOccurs;
            this.message = message;
            this.collection2 = collection2;
        }
    }
    
    // Register an object for validation
    public void register(Object obj) {
        if (obj == null || !(obj instanceof AssociationObservable)) {
            throw new IllegalArgumentException("Object must implement AssociationObservable");
        }
        
        // Add this validator as a listener to the object
        ((AssociationObservable) obj).addAssociationListener(this);
        
        // Process annotations for the object
        processAnnotations(obj);
    }
    
    // Unregister an object
    public void unregister(Object obj) {
        if (obj != null && obj instanceof AssociationObservable) {
            ((AssociationObservable) obj).removeAssociationListener(this);
        }
        
        objectValidationMap.remove(obj);
    }
    
    // Process annotations for the object
    private void processAnnotations(Object obj) {
        Class<?> clazz = obj.getClass();
        
        // Create validation map for this object
        Map<String, AssociationPatternInfo> validationMap = new HashMap<>();
        objectValidationMap.put(obj, validationMap);
        
        // Check class annotations
        AssociationPattern[] annotations = clazz.getAnnotationsByType(AssociationPattern.class);
        for (AssociationPattern anno : annotations) {
            // Only process applicable annotations
            if (anno.context().isAssignableFrom(clazz)) {
                processAnnotation(anno, validationMap);
            }
        }
        
        // Also check field annotations
        for (Field field : clazz.getDeclaredFields()) {
            annotations = field.getAnnotationsByType(AssociationPattern.class);
            for (AssociationPattern anno : annotations) {
                // Only process applicable annotations
                if (anno.context().isAssignableFrom(clazz)) {
                    processAnnotation(anno, validationMap);
                }
            }
        }
    }
    
    // Process a single annotation
    private void processAnnotation(AssociationPattern anno, Map<String, AssociationPatternInfo> validationMap) {
        String collection = anno.collection();
        String collection1 = collection;
        String collection2 = null;
        
        // Check if this is a two-collection pattern
        if (collection.contains(",")) {
            String[] collections = collection.split(",");
            collection1 = collections[0].trim();
            collection2 = collections[1].trim();
        }
        
        validationMap.put(collection1, 
                      new AssociationPatternInfo(
                          anno.name(), 
                          anno.minOccurs(), 
                          anno.maxOccurs(), 
                          anno.message(),
                          collection2));
        
        // For two-collection patterns, also add an entry for the second collection
        if (collection2 != null) {
            validationMap.put(collection2, 
                          new AssociationPatternInfo(
                              anno.name(), 
                              anno.minOccurs(), 
                              anno.maxOccurs(), 
                              anno.message(),
                              collection1));
        }
    }
    
    // Implementation of the AssociationListener interface
    @Override
    public void onAssociationChanged(Object source, String collectionName) {
        validate(source, collectionName);
    }
    
    // Validate a specific collection on an object
    public boolean validate(Object obj, String collectionName) {
        Map<String, AssociationPatternInfo> validationMap = objectValidationMap.get(obj);
        if (validationMap == null || !validationMap.containsKey(collectionName)) {
            return true; // No validation defined for this collection
        }
        
        AssociationPatternInfo info = validationMap.get(collectionName);
        
        try {
            boolean valid = false;
            
            // Validate based on the pattern name
            switch (info.name) {
                case "MinimumAssociation":
                case "MaximumAssociation":
                case "ExactAssociation":
                case "RequiredAssociation":
                case "ForbiddenAssociation":
                    valid = AssociationProcessor.validateAssociation(
                        obj, collectionName, info.minOccurs, info.maxOccurs);
                    break;
                    
                case "BalancedAssociation":
                    valid = AssociationProcessor.validateBalancedAssociation(
                        obj, collectionName, info.collection2);
                    break;
                    
                case "InclusiveAssociation":
                    valid = AssociationProcessor.validateInclusiveAssociation(
                        obj, collectionName, info.collection2);
                    break;
                    
                case "ExclusiveAssociation":
                    valid = AssociationProcessor.validateExclusiveAssociation(
                        obj, collectionName, info.collection2);
                    break;
                    
                case "ConditionalAssociation":
                    // Không xử lý ConditionalAssociation khi không có condition
                    valid = true;
                    break;
                    
                case "ExistentialAssociation":
                    // Không xử lý ExistentialAssociation khi không có condition
                    valid = true;
                    break;
                    
                default:
                    valid = true; // Unknown pattern, assume valid
            }
            
            if (!valid) {
                reportViolation(obj, info.name, info.message, collectionName, 
                             info.collection2, info.minOccurs, info.maxOccurs);
            }
            
            return valid;
        } catch (Exception e) {
            reportError(obj, e);
            return false;
        }
    }
    
    // Validate all registered collections on an object
    public boolean validateAll(Object obj) {
        Map<String, AssociationPatternInfo> validationMap = objectValidationMap.get(obj);
        if (validationMap == null) {
            return true; // No validations defined
        }
        
        boolean allValid = true;
        
        for (String collectionName : validationMap.keySet()) {
            if (!validate(obj, collectionName)) {
                allValid = false;
            }
        }
        
        return allValid;
    }
    
    // Validate all registered objects
    public boolean validateAll() {
        boolean allValid = true;
        
        for (Object obj : objectValidationMap.keySet()) {
            if (!validateAll(obj)) {
                allValid = false;
            }
        }
        
        return allValid;
    }
    
    // Report a validation violation
    protected void reportViolation(Object obj, String patternName, String message, 
                                String collectionName, String collection2, 
                                int minOccurs, int maxOccurs) {
        // Default implementation just prints to console
        // In a real application, this might throw an exception, log to a file, etc.
        String actualMessage = message;
        if (actualMessage == null || actualMessage.isEmpty()) {
            actualMessage = formatDefaultMessage(obj, patternName, collectionName, 
                                             collection2, minOccurs, maxOccurs);
        }
        
        System.err.println("Validation error: " + actualMessage);
    }
    
    // Format a default message
    private String formatDefaultMessage(Object obj, String patternName, 
                                     String collectionName, String collection2, 
                                     int minOccurs, int maxOccurs) {
        StringBuilder sb = new StringBuilder();
        sb.append("Association constraint violation in ");
        sb.append(obj.getClass().getSimpleName());
        sb.append(" for pattern '");
        sb.append(patternName);
        sb.append("' on collection '");
        sb.append(collectionName);
        sb.append("'");
        
        switch (patternName) {
            case "MinimumAssociation":
                sb.append(": must have at least ");
                sb.append(minOccurs);
                sb.append(" elements");
                break;
                
            case "MaximumAssociation":
                sb.append(": cannot have more than ");
                sb.append(maxOccurs);
                sb.append(" elements");
                break;
                
            case "ExactAssociation":
                sb.append(": must have exactly ");
                sb.append(minOccurs);
                sb.append(" elements");
                break;
                
            case "RequiredAssociation":
                sb.append(": must have at least one element");
                break;
                
            case "ForbiddenAssociation":
                sb.append(": must not have any elements");
                break;
                
            case "BalancedAssociation":
                sb.append(": must have the same number of elements as '");
                sb.append(collection2);
                sb.append("'");
                break;
                
            case "InclusiveAssociation":
                sb.append(": must include all elements from '");
                sb.append(collection2);
                sb.append("'");
                break;
                
            case "ExclusiveAssociation":
                sb.append(": must not have any elements in common with '");
                sb.append(collection2);
                sb.append("'");
                break;
        }
        
        return sb.toString();
    }
    
    // Report an error during validation
    protected void reportError(Object obj, Exception e) {
        // Default implementation just prints to console
        System.err.println("Error validating " + obj.getClass().getSimpleName() + ": " + e.getMessage());
        e.printStackTrace();
    }
}
