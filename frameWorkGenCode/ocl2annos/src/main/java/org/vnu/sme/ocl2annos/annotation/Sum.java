/*package org.vnu.sme.ocl2annos.oclPattern.annotation;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;
import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface Sum {
    String name();
    String[] refObjs();
    String attr();
}
*/
package org.vnu.sme.ocl2annos.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Annotation for calculating the sum of a field in a collection.
 * The annotated field will be set to the sum of values.
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface Sum {
    /**
     * The name of the field in the entity that contains the collection
     */
    String collection();
    
    /**
     * The name of the field in the collection items that contains the value to sum
     */
    String field();
}