package com.example.nhom5WebApp_LapTopShop.service;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.example.nhom5WebApp_LapTopShop.domain.Product;
import com.example.nhom5WebApp_LapTopShop.repository.ProductRepository;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.InputStream;
import java.util.List;

@Service
public class ImportJSON {

    private ProductRepository productRepository;

    public ImportJSON(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public ResponseEntity<String> loadProductsFromJson() {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            // Đọc file Json từ thư mục /resource
            Resource resource = new ClassPathResource("product.json");
            InputStream inputStream = resource.getInputStream();

            // Chuyển đổi JSON thành danh sách các đối tượng Product
            List<Product> products = objectMapper.readValue(inputStream, new TypeReference<List<Product>>() {
            });

            // Lưu danh sách sản phẩm vào Database
            productRepository.saveAll(products);

            return ResponseEntity.ok("Successfully!");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body("Failed!");
        }
    }
}
