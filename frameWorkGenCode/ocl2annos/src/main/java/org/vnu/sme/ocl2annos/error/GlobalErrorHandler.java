package org.vnu.sme.ocl2annos.error;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Global error handler for the application.
 */
@ControllerAdvice
public class GlobalErrorHandler {
    
    /**
     * Handle constraint violation exceptions
     */
    @ExceptionHandler(ConstraintViolationException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public String handleConstraintViolation(
            ConstraintViolationException ex, 
            Model model, 
            RedirectAttributes redirectAttributes) {
        
        List<String> errors = new ArrayList<>();
        
        if (ex.getConstraintViolations() != null) {
            errors = ex.getConstraintViolations()
                    .stream()
                    .map(this::formatViolation)
                    .collect(Collectors.toList());
        } else if (ex.getMessage() != null) {
            errors.add(ex.getMessage());
        } else {
            errors.add("Validation error occurred");
        }
        
        model.addAttribute("errors", errors);
        model.addAttribute("errorMessage", "Validation failed: " + String.join(", ", errors));
        
        // Also add to redirect attributes in case we're redirecting
        redirectAttributes.addFlashAttribute("errors", errors);
        redirectAttributes.addFlashAttribute("errorMessage", "Validation failed: " + String.join(", ", errors));
        
        return "error/validation";
    }
    
    /**
     * Format a constraint violation message
     */
    private String formatViolation(ConstraintViolation<?> violation) {
        String propertyPath = violation.getPropertyPath().toString();
        String message = violation.getMessage();
        
        if (propertyPath != null && !propertyPath.isEmpty()) {
            return propertyPath + ": " + message;
        } else {
            return message;
        }
    }
}