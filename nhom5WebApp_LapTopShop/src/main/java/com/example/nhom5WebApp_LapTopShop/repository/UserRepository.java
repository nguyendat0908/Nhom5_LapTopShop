package com.example.nhom5webapp_laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.nhom5webapp_laptopshop.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User save(User vinh);
    List<User> findAll();
    User  findById(long id);
}
