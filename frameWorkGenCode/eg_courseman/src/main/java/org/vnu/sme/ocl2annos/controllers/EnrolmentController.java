/*package org.vnu.sme.ocl2annos.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.vnu.sme.ocl2annos.models.Enrolment;
import org.vnu.sme.ocl2annos.services.CourseModuleService;
import org.vnu.sme.ocl2annos.services.EnrolmentService;
import org.vnu.sme.ocl2annos.services.StudentService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/enrolments")
public class EnrolmentController {

    @Autowired
    private EnrolmentService enrolmentService;
    
    @Autowired
    private StudentService studentService;
    
    @Autowired
    private CourseModuleService courseModuleService;
    
    @GetMapping
    public String listEnrolments(Model model) {
        List<Enrolment> enrolments = enrolmentService.findAll();
        model.addAttribute("enrolments", enrolments);
        return "enrolments/list";
    }
    
    @GetMapping("/new")
    public String showNewForm(Model model) {
        model.addAttribute("enrolment", new Enrolment());
        model.addAttribute("students", studentService.findAll());
        model.addAttribute("courses", courseModuleService.findAll());
        return "enrolments/form";
    }
    
    @PostMapping
    public String saveEnrolment(@Valid @ModelAttribute("enrolment") Enrolment enrolment, 
                             BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("students", studentService.findAll());
            model.addAttribute("courses", courseModuleService.findAll());
            return "enrolments/form";
        }
        
        enrolmentService.save(enrolment);
        return "redirect:/enrolments";
    }
    
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        Enrolment enrolment = enrolmentService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid enrolment Id:" + id));
        model.addAttribute("enrolment", enrolment);
        model.addAttribute("students", studentService.findAll());
        model.addAttribute("courses", courseModuleService.findAll());
        return "enrolments/form";
    }
    
    @GetMapping("/delete/{id}")
    public String deleteEnrolment(@PathVariable("id") Long id) {
        Enrolment enrolment = enrolmentService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid enrolment Id:" + id));
        enrolmentService.deleteById(enrolment.getId());
        return "redirect:/enrolments";
    }
    
    @GetMapping("/view/{id}")
    public String viewEnrolment(@PathVariable("id") Long id, Model model) {
        Enrolment enrolment = enrolmentService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid enrolment Id:" + id));
        model.addAttribute("enrolment", enrolment);
        return "enrolments/view";
    }
}
*/
/*
package org.vnu.sme.ocl2annos.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.validation.Valid;

import org.vnu.sme.ocl2annos.models.Enrolment;
import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.services.CourseModuleService;
import org.vnu.sme.ocl2annos.services.EnrolmentService;
import org.vnu.sme.ocl2annos.services.StudentService;

import java.util.List;

@Controller
@RequestMapping("/enrolments")
public class EnrolmentController {
    
    @Autowired
    private EnrolmentService enrolmentService;
    
    @Autowired
    private StudentService studentService;
    
    @Autowired
    private CourseModuleService courseModuleService;
    
   
    @GetMapping
    public String listEnrolments(Model model) {
        List<Enrolment> enrolments = enrolmentService.getAllEnrolments();
        model.addAttribute("enrolments", enrolments);
        return "enrolments/list";
    }
    
    @GetMapping("/new")
    public String createEnrolmentForm(Model model) {
        Enrolment enrolment = new Enrolment();
        model.addAttribute("enrolment", enrolment);
        model.addAttribute("students", studentService.getAllStudents());
        model.addAttribute("courseModules", courseModuleService.findAll());
        return "enrolments/form";
    }
    
  
    @GetMapping("/edit/{id}")
    public String editEnrolmentForm(@PathVariable Long id, Model model) {
        Enrolment enrolment = enrolmentService.getEnrolmentById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID đăng ký không hợp lệ: " + id));
        model.addAttribute("enrolment", enrolment);
        model.addAttribute("students", studentService.getAllStudents());
        model.addAttribute("courseModules", courseModuleService.findAll());
        return "enrolments/form";
    }
    
  
    @PostMapping
    public String saveEnrolment(@Valid @ModelAttribute("enrolment") Enrolment enrolment,
                               BindingResult result,
                               RedirectAttributes redirectAttributes,
                               Model model) {
        if (result.hasErrors()) {
            model.addAttribute("students", studentService.getAllStudents());
            model.addAttribute("courseModules", courseModuleService.findAll());
            return "enrolments/form";
        }
        
        try {
            enrolmentService.saveEnrolment(enrolment);
            redirectAttributes.addFlashAttribute("successMessage", "Lưu đăng ký thành công!");
            return "redirect:/enrolments";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Lỗi khi lưu đăng ký: " + e.getMessage());
            model.addAttribute("students", studentService.getAllStudents());
            model.addAttribute("courseModules", courseModuleService.findAll());
            return "enrolments/form";
        }
    }
    
   
    @GetMapping("/grades/{id}")
    public String gradesForm(@PathVariable Long id, Model model) {
        Enrolment enrolment = enrolmentService.getEnrolmentById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID đăng ký không hợp lệ: " + id));
        model.addAttribute("enrolment", enrolment);
        return "enrolments/grades"; // hoặc enrolments/grades
    }

    @PostMapping("/grades/{id}")
    public String updateGrades(@PathVariable Long id,
                              @RequestParam Double internalMark,
                              @RequestParam Double examMark,
                              RedirectAttributes redirectAttributes) {
        try {
            enrolmentService.updateEnrolmentGrades(id, internalMark, examMark);
            redirectAttributes.addFlashAttribute("successMessage", "Cập nhật điểm thành công!");
            return "redirect:/enrolments";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Lỗi khi cập nhật điểm: " + e.getMessage());
            return "redirect:/enrolments/grades/" + id;
        }
    }
  
    @GetMapping("/student/{studentId}")
    public String listStudentEnrolments(@PathVariable Long studentId, Model model) {
        Student student = studentService.getStudentById(studentId)
                .orElseThrow(() -> new IllegalArgumentException("ID sinh viên không hợp lệ: " + studentId));
        
        List<Enrolment> enrolments = enrolmentService.getEnrolmentsByStudent(studentId);
        
        model.addAttribute("student", student);
        model.addAttribute("enrolments", enrolments);
        return "enrolments/student-enrolments";
    }
    
  
    @GetMapping("/delete/{id}")
    public String deleteEnrolment(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            enrolmentService.deleteEnrolment(id);
            redirectAttributes.addFlashAttribute("successMessage", "Xóa đăng ký thành công!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Không thể xóa đăng ký: " + e.getMessage());
        }
        return "redirect:/enrolments";
    }
}
*/
package org.vnu.sme.ocl2annos.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.validation.ConstraintViolationException;
import jakarta.validation.Valid;

import org.vnu.sme.ocl2annos.models.CourseModule;
import org.vnu.sme.ocl2annos.models.Enrolment;
import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.services.CourseModuleService;
import org.vnu.sme.ocl2annos.services.EnrolmentService;
import org.vnu.sme.ocl2annos.services.StudentService;

import java.util.List;
import java.util.logging.Logger;

@Controller
@RequestMapping("/enrolments")
public class EnrolmentController {
    
    private static final Logger logger = Logger.getLogger(EnrolmentController.class.getName());
    
    private final EnrolmentService enrolmentService;
    private final StudentService studentService;
    private final CourseModuleService courseModuleService;

    @Autowired
    public EnrolmentController(
            EnrolmentService enrolmentService,
            StudentService studentService,
            CourseModuleService courseModuleService) {
        this.enrolmentService = enrolmentService;
        this.studentService = studentService;
        this.courseModuleService = courseModuleService;
    }
    
    @GetMapping
    public String listEnrolments(Model model) {
        List<Enrolment> enrolments = enrolmentService.getAllEnrolments();
        model.addAttribute("enrolments", enrolments);
        return "enrolments/list";
    }
    
    @GetMapping("/new")
    public String createEnrolmentForm(Model model, @RequestParam(required = false) Long studentId) {
        Enrolment enrolment = new Enrolment();
        
        // Pre-populate student if studentId is provided
        if (studentId != null) {
            studentService.getStudentById(studentId).ifPresent(enrolment::setStudent);
        }
        
        // Ensure version is set for new entities
        enrolment.setVersion(0L);
        
        model.addAttribute("enrolment", enrolment);
        model.addAttribute("students", studentService.getAllStudents());
        model.addAttribute("courseModules", courseModuleService.findAll());
        return "enrolments/form";
    }
    
    @GetMapping("/edit/{id}")
    public String editEnrolmentForm(@PathVariable Long id, Model model) {
        Enrolment enrolment = enrolmentService.getEnrolmentById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID đăng ký không hợp lệ: " + id));
        model.addAttribute("enrolment", enrolment);
        model.addAttribute("students", studentService.getAllStudents());
        model.addAttribute("courseModules", courseModuleService.findAll());
        return "enrolments/form";
    }
    
    @PostMapping
    public String saveEnrolment(@Valid @ModelAttribute("enrolment") Enrolment enrolment,
                              BindingResult result,
                              RedirectAttributes redirectAttributes,
                              Model model) {
        logger.info("Attempting to save enrolment: " + enrolment);
        
        if (result.hasErrors()) {
            logger.warning("Validation errors: " + result.getAllErrors());
            model.addAttribute("students", studentService.getAllStudents());
            model.addAttribute("courseModules", courseModuleService.findAll());
            model.addAttribute("errorMessage", "error in Form. Please check!.");
            return "enrolments/form";
        }
        
        try {
            // Validate student and courseModule
            if (enrolment.getStudent() == null || enrolment.getStudent().getId() == null) {
                model.addAttribute("students", studentService.getAllStudents());
                model.addAttribute("courseModules", courseModuleService.findAll());
                model.addAttribute("errorMessage", "Select a Student");
                return "enrolments/form";
            }
            
            if (enrolment.getCourseModule() == null || enrolment.getCourseModule().getId() == null) {
                model.addAttribute("students", studentService.getAllStudents());
                model.addAttribute("courseModules", courseModuleService.findAll());
                model.addAttribute("errorMessage", "Select a course");
                return "enrolments/form";
            }
            
            Enrolment savedEnrolment = enrolmentService.saveEnrolment(enrolment);
            logger.info("Successfully saved enrolment with ID: " + savedEnrolment.getId());
            redirectAttributes.addFlashAttribute("successMessage", "Save accessful!");
            return "redirect:/enrolments";
        } catch (ConstraintViolationException e) {
            logger.warning("Constraint violation: " + e.getMessage());
            model.addAttribute("students", studentService.getAllStudents());
            model.addAttribute("courseModules", courseModuleService.findAll());
            model.addAttribute("errorMessage", "Error constraint: " + e.getMessage());
            return "enrolments/form";
        } catch (Exception e) {
            logger.severe("Error saving enrolment: " + e.getMessage());
            model.addAttribute("students", studentService.getAllStudents());
            model.addAttribute("courseModules", courseModuleService.findAll());
            model.addAttribute("errorMessage", "Error when enrolment: " + e.getMessage());
            return "enrolments/form";
        }
    }
    
    @GetMapping("/grades/{id}")
    public String gradesForm(@PathVariable Long id, Model model) {
        Enrolment enrolment = enrolmentService.getEnrolmentById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid registration ID: " + id));
        model.addAttribute("enrolment", enrolment);
        return "enrolments/grades";
    }

    @PostMapping("/grades/{id}")
    public String updateGrades(@PathVariable Long id,
                              @RequestParam Double internalMark,
                              @RequestParam Double examMark,
                              RedirectAttributes redirectAttributes,
                              Model model) {
        try {
            // Kiểm tra giá trị đầu vào
            if (internalMark < 0 || internalMark > 10) {
                redirectAttributes.addFlashAttribute("errorMessage", "Invalid grade (0-10)");
                return "redirect:/enrolments/grades/" + id;
            }
            
            if (examMark < 0 || examMark > 10) {
                redirectAttributes.addFlashAttribute("errorMessage", "Invalid grade (0-10)");
                return "redirect:/enrolments/grades/" + id;
            }
            
            // Cập nhật điểm
            Enrolment updatedEnrolment = enrolmentService.updateEnrolmentGrades(id, internalMark, examMark);
            logger.info("Successfully updated grades for enrolment ID: " + id);
            redirectAttributes.addFlashAttribute("successMessage", "Update success");
            return "redirect:/enrolments";
        } catch (IllegalArgumentException e) {
            logger.warning("Validation error: " + e.getMessage());
            redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
            return "redirect:/enrolments/grades/" + id;
        } catch (ConstraintViolationException e) {
            logger.warning("Constraint violation: " + e.getMessage());
            redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
            return "redirect:/enrolments/grades/" + id;
        } catch (Exception e) {
            logger.severe("Error updating grades: " + e.getMessage());
            // Ghi log stach trace để debug
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("errorMessage", "Error update grade: " + e.getMessage());
            return "redirect:/enrolments/grades/" + id;
        }
    }
    @GetMapping("/student/{studentId}")
    public String listStudentEnrolments(@PathVariable Long studentId, Model model) {
        Student student = studentService.getStudentById(studentId)
                .orElseThrow(() -> new IllegalArgumentException("Error ID: " + studentId));
        
        List<Enrolment> enrolments = enrolmentService.getEnrolmentsByStudent(studentId);
        
        model.addAttribute("student", student);
        model.addAttribute("enrolments", enrolments);
        return "enrolments/student-enrolments";
    }
    
    @GetMapping("/delete/{id}")
    public String deleteEnrolment(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            enrolmentService.deleteEnrolment(id);
            logger.info("Successfully deleted enrolment with ID: " + id);
            redirectAttributes.addFlashAttribute("successMessage", "Delete OK!");
        } catch (Exception e) {
            logger.severe("Error deleting enrolment: " + e.getMessage());
            redirectAttributes.addFlashAttribute("errorMessage", "Not registration: " + e.getMessage());
        }
        return "redirect:/enrolments";
    }
    
    @ExceptionHandler(Exception.class)
    public String handleException(Exception ex, RedirectAttributes redirectAttributes) {
        logger.severe("Unhandled exception: " + ex.getMessage());
        redirectAttributes.addFlashAttribute("errorMessage", "Error validate: " + ex.getMessage());
        return "redirect:/enrolments";
    }
}