package org.vnu.sme.ocl2annos.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vnu.sme.ocl2annos.models.CourseModule;
import org.vnu.sme.ocl2annos.repositories.CourseModuleRepository;

@Service
public class CourseModuleService {

    @Autowired
    private CourseModuleRepository courseModuleRepository;
    
    public List<CourseModule> findAll() {
        return courseModuleRepository.findAll();
    }
    
    public Optional<CourseModule> findById(Long id) {
        return courseModuleRepository.findById(id);
    }
    
    public CourseModule save(CourseModule courseModule) {
        return courseModuleRepository.save(courseModule);
    }
    
    public void deleteById(Long id) {
        courseModuleRepository.deleteById(id);
    }
}