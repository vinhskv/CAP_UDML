/*
package org.vnu.sme.ocl2annos.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vnu.sme.ocl2annos.models.SClass;
import org.vnu.sme.ocl2annos.repositories.SClassRepository;

@Service
public class SClassService {

    @Autowired
    private SClassRepository sClassRepository;
    
    public List<SClass> findAll() {
        return sClassRepository.findAll();
    }
    
    public Optional<SClass> findById(Long id) {
        return sClassRepository.findById(id);
    }
    
    public SClass save(SClass sClass) {
        return sClassRepository.save(sClass);
    }
    
    public void deleteById(Long id) {
        sClassRepository.deleteById(id);
    }
}
*/
package org.vnu.sme.ocl2annos.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vnu.sme.ocl2annos.models.SClass;
import org.vnu.sme.ocl2annos.repositories.SClassRepository;

@Service
public class SClassService {

    @Autowired
    private SClassRepository sClassRepository;
    
    public List<SClass> findAll() {
        try {
            return sClassRepository.findAll();
        } catch (Exception e) {
            throw new RuntimeException("Error retrieving classes: " + e.getMessage(), e);
        }
    }
    
    
    public Optional<SClass> findById(Long id) {
        try {
            return sClassRepository.findById(id);
        } catch (Exception e) {
            throw new RuntimeException("Error retrieving class with ID " + id + ": " + e.getMessage(), e);
        }
    }
    
    public SClass save(SClass sClass) {
        try {
            return sClassRepository.save(sClass);
        } catch (Exception e) {
            throw new RuntimeException("Error saving class: " + e.getMessage(), e);
        }
    }
    
    public void deleteById(Long id) {
        try {
            sClassRepository.deleteById(id);
        } catch (Exception e) {
            throw new RuntimeException("Error deleting class with ID " + id + ": " + e.getMessage(), e);
        }
    }
}