package org.vnu.sme.ocl2annos.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Renamed validation error handler to avoid any conflicts
 */
@ControllerAdvice
public class CustomValidationErrorHandler {

    @ExceptionHandler(IllegalStateException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public String handleIllegalStateException(IllegalStateException ex, Model model) {
        model.addAttribute("validationError", ex.getMessage());
        
        // Determine which page to return to based on the error message
        if (ex.getMessage().contains("credits")) {
            return "enrolments/form";
        } else if (ex.getMessage().contains("GPA")) {
            return "students/form";
        } else {
            // Return a generic error page if we can't determine the source
            model.addAttribute("errorMessage", ex.getMessage());
            return "error";
        }
    }
}