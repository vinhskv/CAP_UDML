package org.vnu.sme.ocl2annos.models;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.vnu.sme.ocl2annos.annotation.Sum;
import org.vnu.sme.ocl2annos.annotation.SumConstraint_v_cu;
import org.vnu.sme.ocl2annos.annotation.SumProduct_v_cu;
import org.vnu.sme.ocl2annos.listener.EntityListener;
import org.vnu.sme.ocl2annos.observable.ObservableEntity;
import org.vnu.sme.ocl2annos.processor.AnnotationProcessor;

import jakarta.persistence.Entity;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotBlank;

@Entity
@SumConstraint_v_cu(min = 0, max = 15, collection = "enrolments", field = "courseModule.credits", 
               message = "Total credits must not exceed 15.")
@EntityListeners(EntityListener.class)
public class Student extends ObservableEntity {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    @NotBlank(message="Name not blank")
	    private String name;
	    @Sum(collection =  "enrolments", field =  "courseModule.credits")
	    private Double totalCredits = 0.0;
	    @SumProduct_v_cu(collection = "enrolments", field1 = "finalGrade", field2 =  "courseModule.credits")
	    private Double sumProduct = 0.0; 
	    @OneToMany(mappedBy = "student")
	    private List<Enrolment> enrolments;
	    
	    public Long getId() {
	        return id;
	    }

	    public String getName() {
	        return name;
	    }

	    public Double getTotalCredits() {
	        return totalCredits != null ? totalCredits : 0.0; 
	    }

	    public Double getSumProduct() {
	        return sumProduct != null ? sumProduct : 0.0; 
	    }
		
	    public Double getAverage() { 
	        if (totalCredits == null || totalCredits == 0.0) {
	            return 0.0;
	        }
	        return (sumProduct != null) ? sumProduct / totalCredits : 0.0;
	    }
		 
	    public void setId(Long id) {
	        this.id = id;
	    }
	    
	    public void setTotalCredits(Double totalCredits) {
	        this.totalCredits = totalCredits != null ? totalCredits : 0.0;
	        notifyChange(); // Trigger recalculation when total credits change
	    }

	    public void setSumProduct(Double sumProduct) {
	        this.sumProduct = sumProduct != null ? sumProduct : 0.0; 
	        notifyChange(); // Trigger recalculation when sumProduct changes
	    }

	    public void setName(String name) {
	        this.name = name;
	    }
	    
	    public void setEnrolments(List<Enrolment> enrolments) {
	        this.enrolments = enrolments;
	    }
	    
	    public List<Enrolment> getEnrolments() {
	        return this.enrolments;
	    }
	    
	    // OCL processor for processing annotations
	    @Autowired
	    private transient AnnotationProcessor oclProcessor;
	    
	    @Override
	    public void notifyChange() {
	        super.notifyChange();
	        // Process annotations and recalculate derived values
	        if (oclProcessor != null) {
	            oclProcessor.process(this);
	        }
	    }
	    
	    // Override toString for better logging
	    @Override
	    public String toString() {
	        return "Student{id=" + id + 
	               ", name='" + name + "', " + 
	               "totalCredits=" + (totalCredits != null ? totalCredits : 0.0) + 
	               ", sumProduct=" + (sumProduct != null ? sumProduct : 0.0) + 
	               ", average=" + getAverage() + "}";
	    }
	}