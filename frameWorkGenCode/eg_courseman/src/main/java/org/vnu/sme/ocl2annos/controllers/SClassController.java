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
import org.vnu.sme.ocl2annos.models.SClass;
import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.services.SClassService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/classes")
public class SClassController {

    @Autowired
    private SClassService sClassService;
    
    
    @GetMapping
    public String listClasses(Model model) {
    	 List<SClass> classes = sClassService.findAll();
        model.addAttribute("classes", classes);
        return "classes/list";
    }
    
    @GetMapping("/new")
    public String showNewForm(Model model) {
        try {
            model.addAttribute("sclass", new SClass());
            return "classes/form";
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error showing form: " + e.getMessage());
            e.printStackTrace();
            return "error";
        }
    }
    
    @PostMapping
    public String saveSClass(@Valid @ModelAttribute("sclass") SClass sClass, 
                             BindingResult result, Model model) {
        try {
            if (result.hasErrors()) {
                return "classes/form";
            }
            
            sClassService.save(sClass);
            return "redirect:/classes";
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error saving class: " + e.getMessage());
            e.printStackTrace();
            return "classes/form";
        }
    }
    
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        try {
            SClass sClass = sClassService.findById(id)
                    .orElseThrow(() -> new IllegalArgumentException("Invalid class Id:" + id));
            model.addAttribute("sclass", sClass);
            return "classes/form";
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error editing class: " + e.getMessage());
            e.printStackTrace();
            return "error";
        }
    }
    
    @GetMapping("/delete/{id}")
    public String deleteSClass(@PathVariable("id") Long id, Model model) {
        try {
            SClass sClass = sClassService.findById(id)
                    .orElseThrow(() -> new IllegalArgumentException("Invalid class Id:" + id));
            sClassService.deleteById(sClass.getId());
            return "redirect:/classes";
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error deleting class: " + e.getMessage());
            e.printStackTrace();
            return "error";
        }
    }
    
    @GetMapping("/view/{id}")
    public String viewSClass(@PathVariable("id") Long id, Model model) {
        try {
            SClass sClass = sClassService.findById(id)
                    .orElseThrow(() -> new IllegalArgumentException("Invalid class Id:" + id));
            model.addAttribute("sclass", sClass);
            return "classes/view";
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error viewing class: " + e.getMessage());
            e.printStackTrace();
            return "error";
        }
    }
}