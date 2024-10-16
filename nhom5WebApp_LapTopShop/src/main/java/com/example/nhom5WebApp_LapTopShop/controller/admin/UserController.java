package com.example.nhom5webapp_laptopshop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.nhom5webapp_laptopshop.domain.User;
import com.example.nhom5webapp_laptopshop.service.UserService;

import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class UserController {

    private UserService userService;

    public UserController(UserService userService){
        this.userService = userService;
    }
    
    // Lấy trang tạo mới user
    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/view";
    }

    // Lưu người dùng
    @PostMapping("/admin/user/create")
    public String postCreateUser(Model model, @ModelAttribute("newUser") User user) {
        this.userService.handleSaveUser(user);
        return "redirect:admin/user";
    }
    
    
}
