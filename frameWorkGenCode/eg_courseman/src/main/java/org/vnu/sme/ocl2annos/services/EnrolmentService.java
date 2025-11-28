/*

package org.vnu.sme.ocl2annos.services;

import java.util.List;
import java.util.Optional;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.vnu.sme.ocl2annos.models.Enrolment;
import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.oclPattern.validate.OCLProcessor;
import org.vnu.sme.ocl2annos.repositories.EnrolmentRepository;
import org.vnu.sme.ocl2annos.repositories.StudentRepository;

@Service
public class EnrolmentService {
    
    private static final Logger logger = Logger.getLogger(EnrolmentService.class.getName());
    
    private final EnrolmentRepository enrolmentRepository;
    private final OCLProcessor oclProcessor;
    private final StudentRepository studentRepository;

    @Autowired
    public EnrolmentService(
            EnrolmentRepository enrolmentRepository, 
            @Lazy OCLProcessor oclProcessor,
            StudentRepository studentRepository) {
        this.enrolmentRepository = enrolmentRepository;
        this.oclProcessor = oclProcessor;
        this.studentRepository = studentRepository;
        logger.info("EnrolmentService initialized with oclProcessor: " + (oclProcessor != null ? "not null" : "null"));
    }
    
    public List<Enrolment> getAllEnrolments() {
        return enrolmentRepository.findAll();
    }
    
    public Optional<Enrolment> getEnrolmentById(Long id) {
        return enrolmentRepository.findById(id);
    }
    
    public List<Enrolment> getEnrolmentsByStudent(Long studentId) {
        return enrolmentRepository.findByStudentId(studentId);
    }
 
    @Transactional(isolation = Isolation.SERIALIZABLE)
    public Enrolment saveEnrolment(Enrolment enrolment) {
        logger.info("Saving enrolment: " + enrolment);
        
        // Ensure finalGrade is calculated
        if (enrolment.getInternalMark() != null && enrolment.getExamMark() != null) {
            enrolment.calculateFinalGrade();
        }
        
        Enrolment savedEnrolment;
        try {
            savedEnrolment = enrolmentRepository.save(enrolment);
            logger.info("Saved enrolment with ID: " + savedEnrolment.getId());
        } catch (ObjectOptimisticLockingFailureException e) {
            logger.warning("Optimistic locking failure for enrolment: " + enrolment.getId());
            
            // Refresh the entity from the database if it exists
            if (enrolment.getId() != null) {
                Optional<Enrolment> refreshedEnrolment = enrolmentRepository.findById(enrolment.getId());
                if (refreshedEnrolment.isPresent()) {
                    // Update the refreshed entity with new values
                    Enrolment current = refreshedEnrolment.get();
                    current.setInternalMark(enrolment.getInternalMark());
                    current.setExamMark(enrolment.getExamMark());
                    current.calculateFinalGrade();
                    
                    // Try saving again
                    savedEnrolment = enrolmentRepository.save(current);
                    logger.info("Successfully saved refreshed enrolment with ID: " + savedEnrolment.getId());
                } else {
                    logger.severe("Could not find enrolment with ID: " + enrolment.getId());
                    throw new RuntimeException("Enrolment could not be found after locking failure: " + enrolment.getId());
                }
            } else {
                logger.severe("Optimistic locking failure for new enrolment");
                throw e; // Re-throw if this is a new entity
            }
        }
        
        // Process OCL constraints for the student
        if (savedEnrolment.getStudent() != null) {
            Student student = savedEnrolment.getStudent();
            logger.info("Processing OCL constraints for student: " + student.getId());
            
            try {
                if (oclProcessor != null) {
                    // Create a separate transaction for student processing
                    processStudentConstraints(student.getId());
                } else {
                    logger.severe("OCLProcessor is null, cannot process constraints");
                }
            } catch (Exception e) {
                logger.severe("Error processing OCL constraints: " + e.getMessage());
                e.printStackTrace();
                // Continue with the operation, don't throw exception here
            }
        }
        
        return savedEnrolment;
    }
    
    // New method to handle student constraint processing in a separate transaction
    @Transactional(isolation = Isolation.READ_COMMITTED)
    public void processStudentConstraints(Long studentId) {
        if (studentId == null) return;
        
        logger.info("Processing constraints for student ID: " + studentId);
        
        try {
            Student student = studentRepository.findById(studentId)
                    .orElseThrow(() -> new RuntimeException("Student not found with ID: " + studentId));
            
            if (oclProcessor != null) {
                oclProcessor.process(student);
                studentRepository.save(student);
                logger.info("Successfully processed constraints for student: " + studentId);
            }
        } catch (Exception e) {
            logger.severe("Error processing student constraints for ID " + studentId + ": " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    @Transactional(isolation = Isolation.SERIALIZABLE)
    public Enrolment updateEnrolmentGrades(Long id, Double internalMark, Double examMark) {
        logger.info("Updating grades for enrolment ID: " + id);
        
        Enrolment enrolment = getEnrolmentById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID đăng ký không hợp lệ: " + id));
        
        try {
            enrolment.setInternalMark(internalMark);
            enrolment.setExamMark(examMark);
            enrolment.calculateFinalGrade();
            
            Enrolment savedEnrolment = enrolmentRepository.save(enrolment);
            logger.info("Successfully updated grades for enrolment ID: " + id);
            
            // Process OCL constraints for the student in a separate transaction
            if (savedEnrolment.getStudent() != null) {
                processStudentConstraints(savedEnrolment.getStudent().getId());
            }
            
            return savedEnrolment;
        } catch (ObjectOptimisticLockingFailureException e) {
            logger.warning("Optimistic locking failure when updating grades for enrolment: " + id);
            
            // Refresh and retry
            Optional<Enrolment> refreshedEnrolment = enrolmentRepository.findById(id);
            if (refreshedEnrolment.isPresent()) {
                Enrolment current = refreshedEnrolment.get();
                current.setInternalMark(internalMark);
                current.setExamMark(examMark);
                current.calculateFinalGrade();
                
                Enrolment savedEnrolment = enrolmentRepository.save(current);
                
                // Process OCL constraints for the student
                if (savedEnrolment.getStudent() != null) {
                    processStudentConstraints(savedEnrolment.getStudent().getId());
                }
                
                logger.info("Successfully updated grades after refresh for enrolment ID: " + id);
                return savedEnrolment;
            } else {
                logger.severe("Could not find enrolment with ID: " + id + " after locking failure");
                throw new RuntimeException("Enrolment could not be found after locking failure: " + id);
            }
        }
    }
    
    @Transactional(isolation = Isolation.SERIALIZABLE)
    public void deleteEnrolment(Long id) {
        logger.info("Deleting enrolment with ID: " + id);
        
        // Get the enrolment and student before deletion
        Optional<Enrolment> enrolmentOpt = enrolmentRepository.findById(id);
        Long studentId = null;
        
        if (enrolmentOpt.isPresent()) {
            Student student = enrolmentOpt.get().getStudent();
            if (student != null) {
                studentId = student.getId();
            }
        }
        
        try {
            // Delete the enrolment
            enrolmentRepository.deleteById(id);
            logger.info("Successfully deleted enrolment with ID: " + id);
            
            // Process OCL constraints for the student after deletion in a separate transaction
            if (studentId != null) {
                processStudentConstraints(studentId);
            }
        } catch (Exception e) {
            logger.severe("Error deleting enrolment with ID " + id + ": " + e.getMessage());
            e.printStackTrace();
            throw e;
        }
    }
}
*/
package org.vnu.sme.ocl2annos.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.vnu.sme.ocl2annos.models.CourseModule;
import org.vnu.sme.ocl2annos.models.Enrolment;
import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.processor.AnnotationProcessor;
import org.vnu.sme.ocl2annos.repositories.CourseModuleRepository;
import org.vnu.sme.ocl2annos.repositories.EnrolmentRepository;
import org.vnu.sme.ocl2annos.repositories.StudentRepository;

import jakarta.validation.ConstraintViolationException;

import java.util.List;
import java.util.Optional;
import java.util.logging.Logger;

@Service
public class EnrolmentService {
    
    private static final Logger logger = Logger.getLogger(EnrolmentService.class.getName());
    
    private final EnrolmentRepository enrolmentRepository;
    private final StudentRepository studentRepository;
    private final CourseModuleRepository courseModuleRepository;
    private final AnnotationProcessor oclProcessor;

    @Autowired
    public EnrolmentService(
            EnrolmentRepository enrolmentRepository, 
            StudentRepository studentRepository,
            CourseModuleRepository courseModuleRepository,
            AnnotationProcessor oclProcessor) {
        this.enrolmentRepository = enrolmentRepository;
        this.studentRepository = studentRepository;
        this.courseModuleRepository = courseModuleRepository;
        this.oclProcessor = oclProcessor;
        logger.info("EnrolmentService initialized with OCLProcessor: " + (oclProcessor != null ? "not null" : "null"));
    }
    
    public List<Enrolment> getAllEnrolments() {
        return enrolmentRepository.findAll();
    }
    
    public Optional<Enrolment> getEnrolmentById(Long id) {
        return enrolmentRepository.findById(id);
    }
    
    public List<Enrolment> getEnrolmentsByStudent(Long studentId) {
        return enrolmentRepository.findByStudentId(studentId);
    }
 
    @Transactional(isolation = Isolation.READ_COMMITTED)
    public Enrolment saveEnrolment(Enrolment enrolment) {
        logger.info("Saving enrolment: " + enrolment);
        
        // Ensure finalGrade is calculated
        if (enrolment.getInternalMark() != null && enrolment.getExamMark() != null) {
            enrolment.calculateFinalGrade();
        }
        
        try {
            // Ensure entity references are managed
            if (enrolment.getStudent() != null && enrolment.getStudent().getId() != null) {
                Student student = studentRepository.findById(enrolment.getStudent().getId())
                        .orElseThrow(() -> new IllegalArgumentException("Student not found with ID: " + enrolment.getStudent().getId()));
                enrolment.setStudent(student);
                
                // Validate constraints before saving
                if (oclProcessor != null) {
                    oclProcessor.validate(student);
                }
            }
            
            // Save enrolment in database
            Enrolment savedEnrolment = enrolmentRepository.save(enrolment);
            logger.info("Saved enrolment with ID: " + savedEnrolment.getId());
            
            // Trigger Observer pattern by notifying change
            savedEnrolment.notifyChange();
            
            return savedEnrolment;
        } catch (ConstraintViolationException e) {
            logger.warning("Constraint violation: " + e.getMessage());
            throw e; // Re-throw to be caught by controller
        } catch (Exception e) {
            logger.severe("Error saving enrolment: " + e.getMessage());
            throw new RuntimeException("Error saving enrolment: " + e.getMessage(), e);
        }
    }
    @Transactional
    public Enrolment updateEnrolmentGrades(Long id, Double internalMark, Double examMark) {
        logger.info("Updating grades for enrolment ID: " + id);
        
        try {
            // Truy vấn Enrolment từ database
            Enrolment enrolment = enrolmentRepository.findById(id)
                    .orElseThrow(() -> new IllegalArgumentException("ID đăng ký không hợp lệ: " + id));
            
            // Kiểm tra giá trị đầu vào
            if (internalMark < 0 || internalMark > 10) {
                throw new IllegalArgumentException("Điểm quá trình phải từ 0 đến 10");
            }
            
            if (examMark < 0 || examMark > 10) {
                throw new IllegalArgumentException("Điểm thi phải từ 0 đến 10");
            }
            
            // Cập nhật điểm và tính toán điểm tổng kết
            enrolment.setInternalMark(internalMark);
            enrolment.setExamMark(examMark);
            enrolment.calculateFinalGrade();
            
            // Lưu lại Enrolment
            Enrolment savedEnrolment = enrolmentRepository.save(enrolment);
            logger.info("Successfully updated grades for enrolment ID: " + id);
            
            // Cập nhật Student trong transaction riêng để tránh lỗi
            updateStudentAfterGradeChange(savedEnrolment.getStudent());
            
            return savedEnrolment;
        } catch (ObjectOptimisticLockingFailureException e) {
            logger.warning("Optimistic locking failure: " + e.getMessage());
            throw new RuntimeException("Dữ liệu đã được cập nhật bởi người dùng khác. Vui lòng thử lại.", e);
        } catch (Exception e) {
            logger.severe("Error updating grades: " + e.getMessage());
            throw new RuntimeException("Lỗi khi cập nhật điểm: " + e.getMessage(), e);
        }
    }

    // Phương thức riêng để cập nhật Student sau khi thay đổi điểm
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void updateStudentAfterGradeChange(Student student) {
        if (student == null) return;
        
        try {
            // Tải lại Student từ database
            Student refreshedStudent = studentRepository.findById(student.getId()).orElse(null);
            if (refreshedStudent != null && oclProcessor != null) {
                oclProcessor.process(refreshedStudent);
                studentRepository.save(refreshedStudent);
            }
        } catch (Exception e) {
            logger.warning("Non-critical error updating student after grade change: " + e.getMessage());
            // Không throw exception vì việc cập nhật điểm đã thành công
        }
    }
    
   // @Transactional(isolation = Isolation.READ_COMMITTED)
    @Transactional
    public void deleteEnrolment(Long id) {
        logger.info("Deleting enrolment with ID: " + id);
        
        try {
            // Lấy thông tin enrolment và student trước khi xóa
            Optional<Enrolment> enrolmentOpt = enrolmentRepository.findById(id);
            if (!enrolmentOpt.isPresent()) {
                logger.warning("Enrolment not found with ID: " + id);
                return; // Không có gì để xóa
            }
            
            Enrolment enrolment = enrolmentOpt.get();
            Student student = enrolment.getStudent();
            Long studentId = student != null ? student.getId() : null;
            
            // Tách enrolment khỏi student để tránh vấn đề cascade
            if (student != null && student.getEnrolments() != null) {
                student.getEnrolments().remove(enrolment);
                enrolment.setStudent(null);
                enrolmentRepository.save(enrolment); // Lưu trước khi xóa để cập nhật quan hệ
            }
            
            // Xóa enrolment
            enrolmentRepository.deleteById(id);
            logger.info("Successfully deleted enrolment with ID: " + id);
            
            // Cập nhật lại thống kê cho student sau khi xóa (nếu cần)
            if (studentId != null) {
                try {
                    Student updatedStudent = studentRepository.findById(studentId).orElse(null);
                    if (updatedStudent != null && oclProcessor != null) {
                        oclProcessor.process(updatedStudent);
                        studentRepository.save(updatedStudent);
                    }
                } catch (Exception e) {
                    logger.warning("Non-critical error updating student after enrolment deletion: " + e.getMessage());
                    // Không throw exception ở đây vì enrolment đã được xóa thành công
                }
            }
        } catch (Exception e) {
            logger.severe("Error deleting enrolment: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Không thể xóa đăng ký: " + e.getMessage(), e);
        }
    }
}