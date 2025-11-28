/*package org.vnu.sme.ocl2annos.oclPattern.annotation;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;
import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface SumProduct {
    String name();
    String[] refObjs();
    String[] attrs();
}
*/
package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Annotation for calculating the sum of products of two fields in a collection.
 * The annotated field will be set to the sum of products.
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface SumProduct_v_cu {
    /**
     * The name of the field in the entity that contains the collection
     */
    String collection();
    
    /**
     * The name of the first field in the collection items
     */
    String field1();
    
    /**
     * The name of the second field in the collection items
     */
    String field2();
}