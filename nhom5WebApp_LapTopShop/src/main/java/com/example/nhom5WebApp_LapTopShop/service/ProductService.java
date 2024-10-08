package com.example.nhom5webapp_laptopshop.service;

import java.util.*;
import org.springframework.stereotype.Service;

import com.example.nhom5webapp_laptopshop.domain.Product;
import com.example.nhom5webapp_laptopshop.repository.ProductRepository;

@Service
public class ProductService {

    private ProductRepository productRepository;

    public ProductService(ProductRepository productRepository){
        this.productRepository = productRepository;
    }

    // Lưu sản phẩm
    public Product handleSaveProduct(Product product){
        return this.productRepository.save(product);
    }

    // Lấy ra tất cả sản phẩm
    public List<Product> getAllProducts(){
        return this.productRepository.findAll();
    }

    // Lấy ra sản phẩm dựa trên id
    public Optional<Product> getProductById(long id){
        return this.productRepository.findById(id);
    }

    // Xóa sản phẩm dựa trên id
    public void deleteProductById(long id){
        this.productRepository.deleteById(id);
    }
}
