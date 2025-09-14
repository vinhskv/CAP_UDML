/*
package org.vnu.sme.ocl2annos.models;

import org.vnu.sme.ocl2annos.oclPattern.annotation.AverageConstraint;
import org.vnu.sme.ocl2annos.oclPattern.annotation.SumConstraint;
import org.vnu.sme.ocl2annos.oclPattern.util.EntityManagerListener;
import org.vnu.sme.ocl2annos.oclPattern.util.ObservableEntity;

import jakarta.persistence.Entity;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Version;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotNull;

@Entity
@SumConstraint(min = 0, max = 15)
@AverageConstraint(max = 10.0)
@EntityListeners(EntityManagerListener.class)
public class Enrolment extends ObservableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Version
    private Long version;
    @DecimalMin(value = "0.0", message = "Điểm quá trình không được nhỏ hơn 0")
    @DecimalMax(value = "10.0", message = "Điểm quá trình không được lớn hơn 10")
    private Double internalMark;
    
    @DecimalMin(value = "0.0", message = "Điểm thi không được nhỏ hơn 0")
    @DecimalMax(value = "10.0", message = "Điểm thi không được lớn hơn 10")
    private Double examMark;
    
    @DecimalMin(value = "0.0", message = "Điểm tổng kết không được nhỏ hơn 0")
    @DecimalMax(value = "10.0", message = "Điểm tổng kết không được lớn hơn 10")
    private Double finalGrade;
    
    @ManyToOne
    @NotNull(message = "Student không được để trống")
    private Student student;
    
    @ManyToOne
    @NotNull(message = "CourseModule không được để trống")
    private CourseModule courseModule;
    
    // Getters & Setters
    
    @Override
    public void notifyChange() {
        super.notifyChange();
        if (student != null) {
            student.notifyChange();
        }
    }
    // Getters & Setters
    public Long getId() { return id; }
    public Double getInternalMark() { return internalMark; }
    public Double getExamMark() { return examMark; }
    public Double getFinalGrade() { return finalGrade; }
    public Student getStudent() { return student; }
    public CourseModule getCourseModule() { return courseModule; }
    
    // Override setters để tính toán finalGrade
    public void setInternalMark(Double internalMark) {
        this.internalMark = internalMark;
        calculateFinalGrade();
    }
    
    public void setExamMark(Double examMark) {
        this.examMark = examMark;
        calculateFinalGrade();
    }
    
    public void calculateFinalGrade() {
        if (internalMark != null && examMark != null) {
            this.finalGrade = (internalMark * 0.3) + (examMark * 0.7);
        } else {
            this.finalGrade = null;
        }
    }
    
    // Các setter khác
    public void setId(Long id) {
        this.id = id;
    }
    public void setStudent(Student student) { this.student = student; }
    public void setCourseModule(CourseModule courseModule) { this.courseModule = courseModule; }
    
    // Override toString for better logging
    @Override
    public String toString() {
        return "Enrolment{id=" + id + 
               ", student=" + (student != null ? student.getId() : "null") + 
               ", courseModule=" + (courseModule != null ? courseModule.getCode() : "null") + 
               ", internalMark=" + internalMark + 
               ", examMark=" + examMark + 
               ", finalGrade=" + finalGrade + "}";
    }
}
*/
package org.vnu.sme.ocl2annos.models;
import java.util.logging.Logger;

import org.vnu.sme.ocl2annos.annotation.AverageConstraint;
import org.vnu.sme.ocl2annos.listener.EntityListener;
import org.vnu.sme.ocl2annos.observable.ObservableEntity;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;

@Entity
@AverageConstraint(max = 10.0)
@EntityListeners(EntityListener.class)
public class Enrolment extends ObservableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @DecimalMin(value = "0.0", message = "Điểm quá trình không được nhỏ hơn 0")
    @DecimalMax(value = "10.0", message = "Điểm quá trình không được lớn hơn 10" )
    private Double internalMark;
    
    @DecimalMin(value = "0.0", message = "Điểm thi không được nhỏ hơn 0")
    @DecimalMax(value = "10.0", message = "Điểm thi không được lớn hơn 10")
    private Double examMark;
    
    @DecimalMin(value = "0.0", message = "Điểm tổng kết không được nhỏ hơn 0")
    @DecimalMax(value = "10.0", message = "Điểm tổng kết không được lớn hơn 10")
    private Double finalGrade;
    
    @ManyToOne
    @NotNull(message = "Student không được để trống")
    private Student student;
    
    @ManyToOne
    @NotNull(message = "CourseModule không được để trống")
    private CourseModule courseModule;
    
    @Column(name = "version", nullable = false)
    private Long version = 0L;
    @Override
    public void notifyChange() {
        super.notifyChange();
        if (student != null) {
            student.notifyChange();
        }
    }
    private static final Logger logger = Logger.getLogger(Enrolment.class.getName());
    // Getters & Setters
    public Long getId() { return id; }
    public Double getInternalMark() { return internalMark; }
    public Double getExamMark() { return examMark; }
    public Double getFinalGrade() { return finalGrade; }
    public Student getStudent() { return student; }
    public CourseModule getCourseModule() { return courseModule; }
    public Long getVersion() { 
        return version != null ? version : 0L; 
    }
    
    // Override setters để tính toán finalGrade
    public void setInternalMark(Double internalMark) {
        this.internalMark = internalMark;
        calculateFinalGrade();
        notifyChange(); // Thông báo thay đổi để tính lại tổng tín chỉ và điểm trung bình
    }
    
    public void setExamMark(Double examMark) {
        this.examMark = examMark;
        calculateFinalGrade();
        notifyChange(); // Thông báo thay đổi để tính lại tổng tín chỉ và điểm trung bình
    }
    
    public void calculateFinalGrade() {
        try {
            if (internalMark != null && examMark != null) {
                this.finalGrade = (internalMark * 0.3) + (examMark * 0.7);
            } else {
                this.finalGrade = null;
            }
        } catch (Exception e) {
            // Đảm bảo không có lỗi xảy ra trong phương thức này
            logger.severe("Error calculating final grade: " + e.getMessage());
        }
    }
    
    // Các setter khác
    public void setId(Long id) {
        this.id = id;
    }
    
    public void setStudent(Student student) { 
        this.student = student;
        notifyChange(); // Thông báo thay đổi để tính lại tổng tín chỉ và điểm trung bình
    }
    
    public void setCourseModule(CourseModule courseModule) { 
        this.courseModule = courseModule;
        notifyChange(); // Thông báo thay đổi khi khóa học thay đổi (vì tín chỉ có thể thay đổi)
    }
    
    public void setVersion(Long version) {
        this.version = version != null ? version : 0L;
    }
    
    
    // Override toString for better logging
    @Override
    public String toString() {
        return "Enrolment{id=" + id + 
               ", student=" + (student != null ? student.getId() : "null") + 
               ", courseModule=" + (courseModule != null ? courseModule.getCode() : "null") + 
               ", internalMark=" + internalMark + 
               ", examMark=" + examMark + 
               ", finalGrade=" + finalGrade + "}";
    }
}
