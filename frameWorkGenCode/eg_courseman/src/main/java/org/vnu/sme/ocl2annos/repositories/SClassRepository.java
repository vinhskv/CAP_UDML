package org.vnu.sme.ocl2annos.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.vnu.sme.ocl2annos.models.SClass;

@Repository
public interface SClassRepository extends JpaRepository<SClass, Long> {
    // You can add custom query methods here if needed
}