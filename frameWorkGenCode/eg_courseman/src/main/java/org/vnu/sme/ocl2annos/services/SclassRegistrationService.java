package org.vnu.sme.ocl2annos.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vnu.sme.ocl2annos.models.SClass;
import org.vnu.sme.ocl2annos.models.SclassRegistration;
import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.repositories.SclassRegistrationRepository;

@Service
public class SclassRegistrationService {

    @Autowired
    private SclassRegistrationRepository sclassRegistrationRepository;
    
    public List<SclassRegistration> findAll() {
        return sclassRegistrationRepository.findAll();
    }
    
    public Optional<SclassRegistration> findById(Long id) {
        return sclassRegistrationRepository.findById(id);
    }
    
    public List<SclassRegistration> findBySclass(SClass sclass) {
        return sclassRegistrationRepository.findBySclass(sclass);
    }
    
    public List<SclassRegistration> findByStudent(Student student) {
        return sclassRegistrationRepository.findByStudent(student);
    }
    
    public SclassRegistration save(SclassRegistration sclassRegistration) {
        return sclassRegistrationRepository.save(sclassRegistration);
    }
    
    public void deleteById(Long id) {
        sclassRegistrationRepository.deleteById(id);
    }
}