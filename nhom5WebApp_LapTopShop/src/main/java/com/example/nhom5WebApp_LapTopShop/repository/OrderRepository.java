package com.example.nhom5WebApp_LapTopShop.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.*;

import com.example.nhom5WebApp_LapTopShop.domain.Order;
import com.example.nhom5WebApp_LapTopShop.domain.User;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
    
    List<Order> findByUser(User user);

    Page<Order> findAll(Pageable pageable);
}
