package org.vnu.sme.ocl2annos.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.vnu.sme.ocl2annos.models.CourseModule;

@Repository
public interface CourseModuleRepository extends JpaRepository<CourseModule, Long> {
    // You can add custom query methods here if needed
}