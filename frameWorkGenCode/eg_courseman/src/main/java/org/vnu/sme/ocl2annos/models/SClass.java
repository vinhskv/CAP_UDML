package org.vnu.sme.ocl2annos.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotBlank;

@Entity
public class SClass {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotBlank(message = "Class name cannot be empty")
    private String name;

    // Default constructor required by JPA
    public SClass() {
    }
    
    // Constructor with name parameter for convenience
    public SClass(String name) {
        this.name = name;
    }

    // Standard getters and setters
    public Long getId() {
        return id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    @Override
    public String toString() {
        return "SClass{id=" + id + ", name='" + name + "'}";
    }
}