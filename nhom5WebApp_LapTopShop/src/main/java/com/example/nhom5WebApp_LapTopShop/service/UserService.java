package com.example.nhom5WebApp_LapTopShop.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.*;

import com.example.nhom5WebApp_LapTopShop.domain.Role;
import com.example.nhom5WebApp_LapTopShop.domain.User;
import com.example.nhom5WebApp_LapTopShop.domain.DTO.RegisterDTO;
import com.example.nhom5WebApp_LapTopShop.repository.OrderRepository;
import com.example.nhom5WebApp_LapTopShop.repository.ProductRepository;
import com.example.nhom5WebApp_LapTopShop.repository.RoleRepository;
import com.example.nhom5WebApp_LapTopShop.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final ProductRepository productRepository;
    private final OrderRepository orderRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository, 
    ProductRepository productRepository, OrderRepository orderRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.productRepository = productRepository;
        this.orderRepository = orderRepository;
    }

    public String handleHello(){
        return "Hello from Service";
    }

    public User handleSaveUser(User user){
        return this.userRepository.save(user);
    }

    public Page<User> getAllUsers(Pageable pageable){
        return this.userRepository.findAll(pageable);
    }

    public List<User> getAllUsersByEmail(String email){
        return this.userRepository.findOneByEmail(email);
    }

    public User getUserById(long id){
        return this.userRepository.findById(id);
    }

    public void deleteUser(long id){
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name){
        return this.roleRepository.findByName(name);
    }

    // Mapper
    public User registerDTOtoUser(RegisterDTO registerDTO){
        User user = new User();

        user.setFullName(registerDTO.getFirstName() + " " +registerDTO.getLastName());
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());

        return user;
    }

    // Check email exist
    public boolean checkEmailExist(String email){
        return this.userRepository.existsByEmail(email);
    }

    // Get user by email
    public User getUserByEmail(String email){
        return this.userRepository.findByEmail(email);
    }

    // Count User
    public long countUsers(){
        return this.userRepository.count();
    }

    // Count Product
    public long countProducts(){
        return this.productRepository.count();
    }

    // Count Order
    public long countOrders(){
        return this.orderRepository.count();
    }

}
