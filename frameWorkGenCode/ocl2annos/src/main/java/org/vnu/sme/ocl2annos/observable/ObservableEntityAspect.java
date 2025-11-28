package org.vnu.sme.ocl2annos.observable;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.vnu.sme.ocl2annos.listener.ConstraintListener;

@Aspect
@Component
public class ObservableEntityAspect {
    
    @Autowired
    private ConstraintListener constraintListener;
    
    @AfterReturning(
        pointcut = "execution(* org.vnu.sme.ocl2annos.services.*.save(..)) && " +
                   "returning(org.vnu.sme.ocl2annos.observable.ObservableEntity)",
        returning = "result"
    )
    public void afterSaveObservableEntity(JoinPoint joinPoint, ObservableEntity result) {
        System.out.println("ObservableEntityAspect: Entity saved - " + result.getClass().getSimpleName());
        result.addListener(constraintListener);
        result.notifyChange();
    }
    
    @AfterReturning(
        pointcut = "execution(* org.vnu.sme.ocl2annos.services.*.update(..)) && " +
                   "returning(org.vnu.sme.ocl2annos.observable.ObservableEntity)",
        returning = "result"
    )
    public void afterUpdateObservableEntity(JoinPoint joinPoint, ObservableEntity result) {
        System.out.println("ObservableEntityAspect: Entity updated - " + result.getClass().getSimpleName());
        result.addListener(constraintListener);
        result.notifyChange();
    }
}