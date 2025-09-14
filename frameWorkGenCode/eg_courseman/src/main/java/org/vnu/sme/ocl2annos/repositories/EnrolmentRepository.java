/*package org.vnu.sme.ocl2annos.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.vnu.sme.ocl2annos.models.Enrolment;
import org.vnu.sme.ocl2annos.models.Student;

@Repository
public interface EnrolmentRepository extends JpaRepository<Enrolment, Long> {
    List<Enrolment> findByStudent(Student student);
}
*/
package org.vnu.sme.ocl2annos.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.vnu.sme.ocl2annos.models.CourseModule;
import org.vnu.sme.ocl2annos.models.Enrolment;
import org.vnu.sme.ocl2annos.models.Student;

@Repository
public interface EnrolmentRepository extends JpaRepository<Enrolment, Long> {
    
    /**
     * Tìm tất cả đăng ký của một sinh viên
     */
    List<Enrolment> findByStudent(Student student);
    List<Enrolment> findByStudentId(Long studentId);
    
    /**
     * Kiểm tra xem sinh viên đã đăng ký khóa học này trong học kỳ chưa
     */
    boolean existsByStudentAndCourseModule(Student student, CourseModule courseModule);
    
    /**
     * Tính tổng tín chỉ của sinh viên
     */
    @Query("SELECT SUM(e.courseModule.credits) FROM Enrolment e WHERE e.student.id = :studentId")
    Double sumCreditsByStudent(@Param("studentId") Long studentId);
    
    /**
     * Tính tổng của (điểm * tín chỉ) của sinh viên
     */
    @Query("SELECT SUM(e.finalGrade * e.courseModule.credits) FROM Enrolment e " +
           "WHERE e.student.id = :studentId AND e.finalGrade IS NOT NULL")
    Double sumProductByStudent(@Param("studentId") Long studentId);
    
    /**
     * Tính điểm trung bình của sinh viên
     */
    @Query("SELECT CASE WHEN SUM(e.courseModule.credits) > 0 " +
           "THEN SUM(e.finalGrade * e.courseModule.credits) / SUM(e.courseModule.credits) " +
           "ELSE 0 END " +
           "FROM Enrolment e WHERE e.student.id = :studentId AND e.finalGrade IS NOT NULL")
    Double calculateAverageGrade(@Param("studentId") Long studentId);
}