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
import org.vnu.sme.ocl2annos.models.CourseModule;
import org.vnu.sme.ocl2annos.services.CourseModuleService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/courses")
public class CourseModuleController {

    @Autowired
    private CourseModuleService courseModuleService;
    
    @GetMapping
    public String listCourseModules(Model model) {
        List<CourseModule> courses = courseModuleService.findAll();
        model.addAttribute("courses", courses);
        return "courses/list";
    }
    
    @GetMapping("/new")
    public String showNewForm(Model model) {
        model.addAttribute("course", new CourseModule());
        return "courses/form";
    }
    
    @PostMapping
    public String saveCourseModule(@Valid @ModelAttribute("course") CourseModule courseModule, 
                             BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "courses/form";
        }
        
        courseModuleService.save(courseModule);
        return "redirect:/courses";
    }
    
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        CourseModule course = courseModuleService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid course Id:" + id));
        model.addAttribute("course", course);
        return "courses/form";
    }
    
    @GetMapping("/delete/{id}")
    public String deleteCourseModule(@PathVariable("id") Long id) {
        CourseModule course = courseModuleService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid course Id:" + id));
        courseModuleService.deleteById(course.getId());
        return "redirect:/courses";
    }
    
    @GetMapping("/view/{id}")
    public String viewCourseModule(@PathVariable("id") Long id, Model model) {
        CourseModule course = courseModuleService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid course Id:" + id));
        model.addAttribute("course", course);
        return "courses/view";
    }
}