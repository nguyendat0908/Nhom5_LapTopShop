package com.example.nhom5webapp_laptopshop.controller;

import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.example.nhom5webapp_laptopshop.domain.Product;
import com.example.nhom5webapp_laptopshop.service.ProductService;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;







@Controller
public class ProductController {
    
    private ProductService productService;

    public ProductController(ProductService productService){
        this.productService = productService;
    }

    // Hiển thị trang test demo
    // @GetMapping("/admin/order")
    // public String getTestAPI() {
    //     return "admin/user/show";
    // }
    

    // Trang tạo sản phẩm
    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/create";
    }

    // Lưu sản phẩm
    @PostMapping("/admin/product/create")
    public String createProductPage(Model model, @ModelAttribute("newProduct") Product product) {

        this.productService.handleSaveProduct(product);
        return "redirect:admin/product";
    }
    
    // Trang hiển thị danh sách sản phẩm
    @GetMapping("/admin/product")
    public String getProductPage(Model model) {

        List<Product> listProducts = this.productService.getAllProducts();
        model.addAttribute("products", listProducts);

        return "admin/product/show";
    }

    // Hiển thị trang chi tiết sản phẩm
    @GetMapping("/admin/product/{id}")
    public String getViewDetailProductPage(Model model, @PathVariable long id) {
        Product product = this.productService.getProductById(id).get();
        model.addAttribute("product", product);
        return "admin/product/view";
    }

    // Trang cập nhật sản phẩm
    @GetMapping("/admin/product/update")
    public String getUpdateProductPage(Model model) {
        return new String();
    }
    
    
    
}
