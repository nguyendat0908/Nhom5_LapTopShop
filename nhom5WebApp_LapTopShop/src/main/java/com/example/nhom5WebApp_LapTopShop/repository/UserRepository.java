package com.example.nhom5webapp_laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.nhom5webapp_laptopshop.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    
}
