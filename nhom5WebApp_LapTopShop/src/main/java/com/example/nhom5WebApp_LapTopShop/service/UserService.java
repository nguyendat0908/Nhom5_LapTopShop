package com.example.nhom5webapp_laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.nhom5webapp_laptopshop.domain.Role;
import com.example.nhom5webapp_laptopshop.domain.User;
import com.example.nhom5webapp_laptopshop.repository.RoleRepository;
import com.example.nhom5webapp_laptopshop.repository.UserRepository;

import jakarta.transaction.Transactional;

@Service
public class UserService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    // Lưu người dùng
    @Transactional
    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public List<User> getAllUser() {
        return this.userRepository.findAll();
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }
}
