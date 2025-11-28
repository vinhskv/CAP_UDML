package org.vnu.sme.ocl2annos.controllers;

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
import org.vnu.sme.ocl2annos.models.SclassRegistration;
import org.vnu.sme.ocl2annos.services.SClassService;
import org.vnu.sme.ocl2annos.services.SclassRegistrationService;
import org.vnu.sme.ocl2annos.services.StudentService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/registrations")
public class SclassRegistrationController {

    @Autowired
    private SclassRegistrationService registrationService;
    
    @Autowired
    private StudentService studentService;
    
    @Autowired
    private SClassService sClassService;
    
    @GetMapping
    public String listRegistrations(Model model) {
        List<SclassRegistration> registrations = registrationService.findAll();
        model.addAttribute("registrations", registrations);
        return "registrations/list";
    }
    
    @GetMapping("/new")
    public String showNewForm(Model model) {
        model.addAttribute("registration", new SclassRegistration());
        model.addAttribute("students", studentService.getAllStudents());
        model.addAttribute("classes", sClassService.findAll());
        return "registrations/form";
    }
    
    @PostMapping
    public String saveRegistration(@Valid @ModelAttribute("registration") SclassRegistration registration, 
                             BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("students", studentService.getAllStudents());
            model.addAttribute("classes", sClassService.findAll());
            return "registrations/form";
        }
        
        registrationService.save(registration);
        return "redirect:/registrations";
    }
    
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        SclassRegistration registration = registrationService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid registration Id:" + id));
        model.addAttribute("registration", registration);
        model.addAttribute("students", studentService.getAllStudents());
        model.addAttribute("classes", sClassService.findAll());
        return "registrations/form";
    }
    
    @GetMapping("/delete/{id}")
    public String deleteRegistration(@PathVariable("id") Long id) {
        SclassRegistration registration = registrationService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid registration Id:" + id));
        registrationService.deleteById(registration.getId());
        return "redirect:/registrations";
    }
    
    @GetMapping("/view/{id}")
    public String viewRegistration(@PathVariable("id") Long id, Model model) {
        SclassRegistration registration = registrationService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid registration Id:" + id));
        model.addAttribute("registration", registration);
        return "registrations/view";
    }
}