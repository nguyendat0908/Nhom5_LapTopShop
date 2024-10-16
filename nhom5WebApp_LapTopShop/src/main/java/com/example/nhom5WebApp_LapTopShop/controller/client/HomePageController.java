package com.example.nhom5webapp_laptopshop.controller.client;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.example.nhom5webapp_laptopshop.domain.Product;
import com.example.nhom5webapp_laptopshop.service.ProductService;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class HomePageController {
    
    private final ProductService productService;

    public HomePageController(ProductService productService){
        this.productService = productService;
    }

    // Hiển thị trang chủ
    @GetMapping("/")
    public String getHomePage(Model model) {

        Pageable pageable = PageRequest.of(0, 10);
        Page<Product> prs = this.productService.getAllProducts(pageable);

        List<Product> products = prs.getContent();

        model.addAttribute("products", products);

        return "client/homepage/show";
    }
    
    
}
