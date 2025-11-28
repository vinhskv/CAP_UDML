package org.vnu.sme.ocl2annos;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;
import org.vnu.sme.ocl2annos.controllers.GlobalExceptionHandler;

@SpringBootApplication
@ComponentScan(
    basePackages = "org.vnu.sme.ocl2annos",
    excludeFilters = {
        @ComponentScan.Filter(
            type = FilterType.ASSIGNABLE_TYPE,
            classes = org.vnu.sme.ocl2annos.controllers.GlobalExceptionHandler.class
        )
    }
)
public class CourseManApplication {

	public static void main(String[] args) {
		SpringApplication.run(CourseManApplication.class, args);
	}

}