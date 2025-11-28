package org.vnu.sme.ocl2annos.processor;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;

public class AssociationProcessor {
    
    // Basic validation for single collection
    public static boolean validateAssociation(Object obj, String collectionName, 
                                           int minOccurs, int maxOccurs) throws Exception {
        Collection<?> collection = getCollection(obj, collectionName);
        
        if (collection == null) {
            return minOccurs == 0; // Valid only if minimum is 0
        }
        
        int size = collection.size();
        
        // Check minimum constraint
        if (size < minOccurs) {
            return false;
        }
        
        // Check maximum constraint (if specified)
        if (maxOccurs != -1 && size > maxOccurs) {
            return false;
        }
        
        return true;
    }
    
    // Validate if collection1 size equals collection2 size
    public static boolean validateBalancedAssociation(Object obj, String collectionName1, 
                                                   String collectionName2) throws Exception {
        Collection<?> collection1 = getCollection(obj, collectionName1);
        Collection<?> collection2 = getCollection(obj, collectionName2);
        
        if (collection1 == null && collection2 == null) {
            return true;
        }
        
        if (collection1 == null || collection2 == null) {
            return false;
        }
        
        return collection1.size() == collection2.size();
    }
    
    // Validate if collection1 includes all elements of collection2
    public static boolean validateInclusiveAssociation(Object obj, String collectionName1, 
                                                    String collectionName2) throws Exception {
        Collection<?> collection1 = getCollection(obj, collectionName1);
        Collection<?> collection2 = getCollection(obj, collectionName2);
        
        if (collection2 == null || collection2.isEmpty()) {
            return true; // Nothing to include
        }
        
        if (collection1 == null) {
            return false; // Can't include anything
        }
        
        return collection1.containsAll(collection2);
    }
    
    // Validate if collection1 and collection2 have no common elements
    public static boolean validateExclusiveAssociation(Object obj, String collectionName1, 
                                                    String collectionName2) throws Exception {
        Collection<?> collection1 = getCollection(obj, collectionName1);
        Collection<?> collection2 = getCollection(obj, collectionName2);
        
        if (collection1 == null || collection2 == null || 
            collection1.isEmpty() || collection2.isEmpty()) {
            return true; // No common elements possible
        }
        
        for (Object item : collection1) {
            if (collection2.contains(item)) {
                return false; // Found a common element
            }
        }
        
        return true;
    }
    
    // Helper method to get the collection from the object
    @SuppressWarnings("unchecked")
    public static Collection<?> getCollection(Object obj, String collectionName) throws Exception {
        // Try to find a getter method first
        String getterName = "get" + 
                            collectionName.substring(0, 1).toUpperCase() + 
                            collectionName.substring(1);
        
        try {
            Method getter = obj.getClass().getMethod(getterName);
            Object result = getter.invoke(obj);
            
            if (result instanceof Collection) {
                return (Collection<?>) result;
            }
        } catch (NoSuchMethodException e) {
            // No getter found, try to access the field directly
        }
        
        // Try direct field access if getter not found or didn't return a collection
        try {
            Field field = findField(obj.getClass(), collectionName);
            if (field != null) {
                field.setAccessible(true);
                Object result = field.get(obj);
                
                if (result instanceof Collection) {
                    return (Collection<?>) result;
                }
            }
        } catch (Exception e) {
            // Field access failed
        }
        
        return null;
    }
    
    // Helper method to find a field in class hierarchy
    private static Field findField(Class<?> clazz, String fieldName) {
        Class<?> currentClass = clazz;
        while (currentClass != null) {
            try {
                return currentClass.getDeclaredField(fieldName);
            } catch (NoSuchFieldException e) {
                currentClass = currentClass.getSuperclass();
            }
        }
        return null;
    }
}