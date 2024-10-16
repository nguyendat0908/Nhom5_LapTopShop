package com.example.nhom5webapp_laptopshop.service;

import java.util.*;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.example.nhom5webapp_laptopshop.domain.Product;
import com.example.nhom5webapp_laptopshop.domain.DTO.ProductSpecDTO;
import com.example.nhom5webapp_laptopshop.repository.ProductRepository;
import com.example.nhom5webapp_laptopshop.service.specification.ProductSpec;

@Service
public class ProductService {

    private ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    // Lưu sản phẩm
    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }

    // Lấy ra tất cả sản phẩm dành cho HomePage và Admin-Product
    public Page<Product> getAllProducts(Pageable page) {
        return this.productRepository.findAll(page);
    }

    // Lấy tất cả sản phẩm dành cho Product Page
    public Page<Product> getAllProductsWithSpec(Pageable page, ProductSpecDTO productSpecDTO) {

        // Không truyển lên URL thì mặc định lấy hết sản phẩm
        if (productSpecDTO.getFactory() == null
                && productSpecDTO.getPrice() == null
                && productSpecDTO.getTarget() == null) {
            return this.getAllProducts(page);
        }

        // Tạo đối tượng điều kiện trống rỗng
        Specification<Product> objectSpec = Specification.where(null);

        // Filter với mục đích sử dụng
        if (productSpecDTO.getTarget() != null && productSpecDTO.getTarget().isPresent()) {
            Specification<Product> currentSpec = ProductSpec.matchListTarget(productSpecDTO.getTarget().get());
            objectSpec = objectSpec.and(currentSpec);
        }

        // Filter với hãng sản xuất
        if (productSpecDTO.getFactory() != null && productSpecDTO.getFactory().isPresent()) {
            Specification<Product> currentSpec = ProductSpec.matchListFactory(productSpecDTO.getFactory().get());
            objectSpec = objectSpec.and(currentSpec);
        }

        // Filter với giá cả
        if (productSpecDTO.getPrice() != null && productSpecDTO.getPrice().isPresent()) {
            Specification<Product> currentSpec = this.buildPriceSpec(productSpecDTO.getPrice().get());
            objectSpec = objectSpec.and(currentSpec);
        }

        // Nạp tất cả điều kiện vào combinedSpec để truy vấn một lần

        return this.productRepository.findAll(objectSpec, page);
    }

    // Điều kiện lọc với giá
    public Specification<Product> buildPriceSpec(List<String> price) {

        // Tạo đối tượng điều kiện trống rỗng
        Specification<Product> objectSpec = Specification.where(null);

        for (String p : price) {
            double min = 0;
            double max = 0;

            switch (p) {
                case "duoi-10-trieu":
                    min = 1;
                    max = 10000000;
                    break;
                case "10-15-trieu":
                    min = 10000000;
                    max = 15000000;
                    break;
                case "15-20-trieu":
                    min = 15000000;
                    max = 20000000;
                    break;
                case "tren-20-trieu":
                    min = 20000000;
                    max = 200000000;
                    break;
                default:
                    break;
            }
            if (min != 0 && max != 0) {
                Specification<Product> rangeSpec = ProductSpec.matchMultiplePrice(min, max);
                objectSpec = objectSpec.or(rangeSpec);
            }
        }

        return objectSpec;
    }

    // Lấy ra sản phẩm dựa trên id
    public Optional<Product> getProductById(long id) {
        return this.productRepository.findById(id);
    }

    // Xóa sản phẩm dựa trên id
    public void deleteProductById(long id) {
        this.productRepository.deleteById(id);
    }
}
