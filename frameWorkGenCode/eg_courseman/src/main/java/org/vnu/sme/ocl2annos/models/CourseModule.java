package org.vnu.sme.ocl2annos.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class CourseModule {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Long id;
    
    private String code;
    private String name;
    private Integer semester;
    private Double credits;

    // Standard getters and setters
   public Long getId() { return id; }

    public String getCode() {
        return code;
    }
    public String getName() {
        return name;
    }
    public Integer getSemester() {
        return semester;
    }
    public Double getCredits() {
        return credits;
    }
    //set
    public void setId(Long id) {
        this.id = id;
    }
    public void setCode(String code) {
        this.code = code;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setSemester(Integer semester) {
        this.semester = semester;
    }
    public void setCredits(Double credits) {
        this.credits = credits;
    }
}
