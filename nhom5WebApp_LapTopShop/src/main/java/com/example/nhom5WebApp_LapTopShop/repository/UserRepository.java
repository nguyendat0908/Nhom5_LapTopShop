package com.example.nhom5WebApp_LapTopShop.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.*;

import com.example.nhom5WebApp_LapTopShop.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    // Spring <-> INSERT INTO USER VALUES(...)
    User save(User user);

    List<User> findOneByEmail(String email);

    Page<User> findAll(Pageable pageable);

    User findById(long id);

    void deleteById(long id);

    boolean existsByEmail(String email);

    User findByEmail(String email);

}
