package com.example.nhom5WebApp_LapTopShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.nhom5WebApp_LapTopShop.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
    
    Role findByName(String name);
}
