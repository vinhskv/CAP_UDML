package org.vnu.sme.ocl2annos.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.vnu.sme.ocl2annos.models.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    // You can add custom query methods here if needed
}