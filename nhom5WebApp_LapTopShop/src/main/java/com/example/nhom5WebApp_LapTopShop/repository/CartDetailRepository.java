package com.example.nhom5WebApp_LapTopShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.nhom5WebApp_LapTopShop.domain.Cart;
import com.example.nhom5WebApp_LapTopShop.domain.CartDetail;
import com.example.nhom5WebApp_LapTopShop.domain.Product;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {
    
    boolean existsByCartAndProduct(Cart cart, Product product);

    CartDetail findByCartAndProduct(Cart cart, Product product);
}

