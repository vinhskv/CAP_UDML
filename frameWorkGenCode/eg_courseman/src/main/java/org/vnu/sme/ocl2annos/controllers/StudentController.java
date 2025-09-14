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
import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.services.StudentService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/students")
public class StudentController {

    @Autowired
    private StudentService studentService;
    
    @GetMapping
    public String listStudents(Model model) {
        List<Student> students = studentService.findAll();
        model.addAttribute("students", students);
        return "students/list";
    }
    
    @GetMapping("/new")
    public String showNewForm(Model model) {
        model.addAttribute("student", new Student());
        return "students/form";
    }
    
    @PostMapping
    public String saveStudent(@Valid @ModelAttribute("student") Student student, 
                             BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "students/form";
        }
        
        studentService.save(student);
        return "redirect:/students";
    }
    
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        Student student = studentService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid student Id:" + id));
        model.addAttribute("student", student);
        return "students/form";
    }
    
    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable("id") Long id) {
        Student student = studentService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid student Id:" + id));
        studentService.deleteById(student.getId());
        return "redirect:/students";
    }
    
    @GetMapping("/view/{id}")
    public String viewStudent(@PathVariable("id") Long id, Model model) {
        Student student = studentService.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid student Id:" + id));
        model.addAttribute("student", student);
        return "students/view";
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

import jakarta.validation.Valid;

import org.vnu.sme.ocl2annos.models.Student;
import org.vnu.sme.ocl2annos.services.StudentService;
import org.vnu.sme.ocl2annos.services.EnrolmentService;

import java.util.List;

@Controller
@RequestMapping("/students")
public class StudentController {
    
    @Autowired
    private StudentService studentService;
    
    @Autowired
    private EnrolmentService enrolmentService;
    
    /**
     * Hiển thị danh sách sinh viên
     */
    @GetMapping
    public String listStudents(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "students/list";
    }
    
    /**
     * Hiển thị form tạo sinh viên mới
     */
    @GetMapping("/new")
    public String createStudentForm(Model model) {
        model.addAttribute("student", new Student());
        return "students/form";
    }
    
    /**
     * Hiển thị form chỉnh sửa sinh viên
     */
    @GetMapping("/edit/{id}")
    public String editStudentForm(@PathVariable Long id, Model model) {
        Student student = studentService.getStudentById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID sinh viên không hợp lệ: " + id));
        model.addAttribute("student", student);
        return "students/form";
    }
    
    /**
     * Lưu sinh viên mới hoặc cập nhật sinh viên
     */
    @PostMapping
    public String saveStudent(@Valid @ModelAttribute("student") Student student, 
                             BindingResult result, 
                             RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            return "students/form";
        }
        
        try {
            studentService.saveStudent(student);
            redirectAttributes.addFlashAttribute("successMessage", "Lưu sinh viên thành công!");
            return "redirect:/students";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Lỗi khi lưu sinh viên: " + e.getMessage());
            return "redirect:/students";
        }
    }
    
    /**
     * Xem chi tiết sinh viên
     */
    @GetMapping("/view/{id}")
    public String viewStudent(@PathVariable Long id, Model model) {
        Student student = studentService.getStudentById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID sinh viên không hợp lệ: " + id));
        model.addAttribute("student", student);
        return "students/view";
    }
    
    /**
     * Xóa sinh viên
     */
    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            studentService.deleteStudent(id);
            redirectAttributes.addFlashAttribute("successMessage", "Xóa sinh viên thành công!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Không thể xóa sinh viên: " + e.getMessage());
        }
        return "redirect:/students";
    }
    
    /**
     * Tính lại điểm và tín chỉ cho sinh viên
     */
    @GetMapping("/recalculate/{id}")
    public String recalculateStudentStats(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            studentService.recalculateStudentStats(id);
            redirectAttributes.addFlashAttribute("successMessage", "Đã tính lại thống kê sinh viên!");
            return "redirect:/students/view/" + id;
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Lỗi khi tính lại thống kê: " + e.getMessage());
            return "redirect:/students";
        }
    }
}