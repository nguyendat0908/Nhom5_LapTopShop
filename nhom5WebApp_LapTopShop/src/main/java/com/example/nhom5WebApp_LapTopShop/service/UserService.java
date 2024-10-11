package com.example.nhom5webapp_laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.nhom5webapp_laptopshop.domain.User;
import com.example.nhom5webapp_laptopshop.repository.UserRepository;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // Lưu người dùng
    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }
    public List<User> getAllUser() {
        return this.userRepository.findAll();
    }

}
