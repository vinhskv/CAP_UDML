package org.vnu.sme.ocl2annos.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.vnu.sme.ocl2annos.models.SClass;
import org.vnu.sme.ocl2annos.models.SclassRegistration;
import org.vnu.sme.ocl2annos.models.Student;

@Repository
public interface SclassRegistrationRepository extends JpaRepository<SclassRegistration, Long> {
    List<SclassRegistration> findBySclass(SClass sclass);
    List<SclassRegistration> findByStudent(Student student);
}