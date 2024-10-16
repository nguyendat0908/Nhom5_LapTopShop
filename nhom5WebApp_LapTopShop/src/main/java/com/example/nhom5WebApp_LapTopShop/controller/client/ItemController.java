package com.example.nhom5webapp_laptopshop.controller.client;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

import com.example.nhom5webapp_laptopshop.domain.Product;
import com.example.nhom5webapp_laptopshop.domain.DTO.ProductSpecDTO;
import com.example.nhom5webapp_laptopshop.service.ProductService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ItemController {
    
    private final ProductService productService;

    public ItemController(ProductService productService){
        this.productService = productService;
    }

    // Hiển thị trang sản phẩm với tất cả sản phẩm
    @GetMapping("/products")
    public String getAllProductPage(Model model, ProductSpecDTO productSpecDTO, HttpServletRequest request) {

        // Nếu không truyền query string thì mặc định page = 1
        int page = 1;

        try {
            if (productSpecDTO.getPage().isPresent()) {
                // Convert String to Int
                page = Integer.parseInt(productSpecDTO.getPage().get());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        Pageable pageable = PageRequest.of(page - 1, 9);
        Page<Product> prs = this.productService.getAllProducts(pageable);
        List<Product> products = prs.getContent();

        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPage", prs.getTotalPages());


        return "client/product/show";
    }
}
