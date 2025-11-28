package org.vnu.sme.ocl2annos.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import(org.vnu.sme.ocl2annos.config.TriggerConfig.class)
public class AppConfig {
    // Your application configuration
}