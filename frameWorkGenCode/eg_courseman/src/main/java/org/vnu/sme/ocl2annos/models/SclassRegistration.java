package org.vnu.sme.ocl2annos.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class SclassRegistration {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Student student;

    @ManyToOne
    private SClass sclass;

    // Standard getters and setters

    public Long getId() {
        return id;
    }
    public Student getStudent() {
        return student;
    }
    public SClass getSclass() {
        return sclass;
    }
    public void setStudent(Student student) {
        this.student = student;
    }
    public void setSclass(SClass sclass) {
        this.sclass = sclass;
    }
}

