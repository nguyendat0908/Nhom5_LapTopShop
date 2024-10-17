package com.example.nhom5WebApp_LapTopShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.nhom5WebApp_LapTopShop.domain.Cart;
import com.example.nhom5WebApp_LapTopShop.domain.User;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
    Cart findByUser(User user);
}
