package com.example.nhom5webapp_laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.nhom5webapp_laptopshop.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);

}
