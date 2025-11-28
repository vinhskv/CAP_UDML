/*
package org.vnu.sme.ocl2annos.services;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.repositories.StudentRepository;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;
    
    public List<Student> findAll() {
        return studentRepository.findAll();
    }
    
    public Optional<Student> findById(Long id) {
        return studentRepository.findById(id);
    }
    
    public Student save(Student student) {
        return studentRepository.save(student);
    }
    
    public void deleteById(Long id) {
        studentRepository.deleteById(id);
    }
}
*/
package org.vnu.sme.ocl2annos.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.processor.AnnotationProcessor;
import org.vnu.sme.ocl2annos.repositories.StudentRepository;

import java.util.List;
import java.util.Optional;
import java.util.logging.Logger;

@Service
public class StudentService {
    
    private static final Logger logger = Logger.getLogger(StudentService.class.getName());
    
    private final StudentRepository studentRepository;
    private final AnnotationProcessor oclProcessor;
    
    @Autowired
    public StudentService(StudentRepository studentRepository, AnnotationProcessor oclProcessor) {
        this.studentRepository = studentRepository;
        this.oclProcessor = oclProcessor;
        logger.info("StudentService initialized with OCLProcessor: " + (oclProcessor != null ? "not null" : "null"));
    }
    
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }
    
    public Optional<Student> getStudentById(Long id) {
        return studentRepository.findById(id);
    }
    
    @Transactional
    public Student saveStudent(Student student) {
        logger.info("Saving student: " + student);
        
        Student savedStudent = studentRepository.save(student);
        
        try {
            if (oclProcessor != null) {
                oclProcessor.process(savedStudent);
            } else {
                logger.warning("OCLProcessor is null, cannot process constraints");
            }
        } catch (Exception e) {
            logger.severe("Error processing OCL constraints: " + e.getMessage());
        }
        
        return savedStudent;
    }
    
    @Transactional
    public void deleteStudent(Long id) {
        logger.info("Deleting student with ID: " + id);
        studentRepository.deleteById(id);
    }
    /**
     * Recalculate statistics for a student
     * This method is called from StudentController
     */
    @Transactional
    public Student recalculateStudentStats(Long studentId) {
        logger.info("Recalculating stats for student ID: " + studentId);
        
        Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new IllegalArgumentException("Student not found with ID: " + studentId));
        
        try {
            if (oclProcessor != null) {
                // Process OCL constraints for student
                oclProcessor.process(student);
                
                // Save updated student
                student = studentRepository.save(student);
                logger.info("Successfully recalculated stats for student: " + studentId);
            } else {
                logger.warning("OCLProcessor is null, cannot recalculate student stats");
            }
        } catch (Exception e) {
            logger.severe("Error recalculating student stats: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to recalculate student stats: " + e.getMessage(), e);
        }
        
        return student;
    }
}