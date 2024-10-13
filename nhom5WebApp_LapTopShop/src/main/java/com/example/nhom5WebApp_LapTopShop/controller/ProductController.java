// package com.example.nhom5webapp_laptopshop.controller;

// import java.util.*;

<<<<<<< HEAD
// import org.springframework.http.ResponseEntity;
// import org.springframework.stereotype.Controller;
// import org.springframework.ui.Model;
=======
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
>>>>>>> e11e93178fa4d7967f06c7dd488625ecb97de048

// import com.example.nhom5webapp_laptopshop.domain.Product;
// import com.example.nhom5webapp_laptopshop.service.ImportJSON;
// import com.example.nhom5webapp_laptopshop.service.ProductService;
// <<<<<<< HEAD
// =======
// import com.example.nhom5webapp_laptopshop.service.UploadService;
// >>>>>>> c77ea160e82668791433e22fa8c5a4394b5300be

// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.ModelAttribute;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.multipart.MultipartFile;

// @Controller
// public class ProductController {
// <<<<<<< HEAD

//     private ProductService productService;

//     public ProductController(ProductService productService) {
// =======

//     private final ProductService productService;
//     private final UploadService uploadService;
//     private final ImportJSON importJSON;

//     public ProductController(ProductService productService, UploadService uploadService, ImportJSON importJSON) {
// >>>>>>> c77ea160e82668791433e22fa8c5a4394b5300be
//         this.productService = productService;
//         this.uploadService = uploadService;
//         this.importJSON = importJSON;
//     }

//     // Tải sản phẩm từ JSON
//     @GetMapping("/admin/product/load")
//     public ResponseEntity<String> loadProducts() {
//         return importJSON.loadProductsFromJson();
//     }

//     // Trang tạo sản phẩm
//     @GetMapping("/admin/product/create")
//     public String getCreateProductPage(Model model) {
//         model.addAttribute("newProduct", new Product());
//         return "admin/product/create";
//     }

// <<<<<<< HEAD
//     // Lưu sản phẩm
//     @PostMapping("/admin/product/create")
//     public String createProductPage(@ModelAttribute("newProduct") Product product,
//             @RequestParam("uploadFile") MultipartFile file) {
// =======
//         this.productService.handleSaveProduct(product);
//         return "redirect:/admin/product";
//     }
// >>>>>>> e59b17f66944401315efd9bfb1d82b84364276d9

<<<<<<< HEAD
//         String imgProduct = this.uploadService.handleSaveUploadFile(file, "product");
//         product.setImage(imgProduct);

//         this.productService.handleSaveProduct(product);
//         return "redirect:admin/product";
//     }
=======
    // Trang hiển thị danh sách sản phẩm
    @GetMapping("/admin/product")
    public String getProductPage(Model model, @RequestParam("page") Optional<String> pageOptional) {

        // Không truyền gì thì mặc định page = 1
        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                // Convert String to int
                page = Integer.parseInt(pageOptional.get());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Tại database: offset + limit
        Pageable pageable = PageRequest.of(page - 1, 10);

        Page<Product> prs = this.productService.getAllProducts(pageable);
        // Convert sang list
        List<Product> listProducts = prs.getContent();

        // Truyền ra view
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPage", prs.getTotalPages());
        model.addAttribute("products", listProducts);
>>>>>>> e11e93178fa4d7967f06c7dd488625ecb97de048

//     // Trang hiển thị danh sách sản phẩm
//     @GetMapping("/admin/product")
//     public String getProductPage(Model model) {

//         List<Product> listProducts = this.productService.getAllProducts();
//         model.addAttribute("products", listProducts);

//         return "admin/product/show";
//     }

//     // Hiển thị trang chi tiết sản phẩm
//     @GetMapping("/admin/product/{id}")
//     public String getViewDetailProductPage(Model model, @PathVariable long id) {
//         Product product = this.productService.getProductById(id).get();
//         model.addAttribute("product", product);
//         return "admin/product/view";
//     }

//     // Trang cập nhật sản phẩm
//     @GetMapping("/admin/product/update/{id}")
//     public String getUpdateProductPage(Model model, @PathVariable long id) {

//         Optional<Product> currentProduct = this.productService.getProductById(id);
//         model.addAttribute("newProduct", currentProduct);

//         return "admin/product/update";
//     }

// <<<<<<< HEAD
// =======
//     // Cập nhật sản phẩm
//     @PostMapping("/admin/product/update")
//     public String postUpdateProduct(@ModelAttribute("newProduct") Product product,
//             @RequestParam("uploadFile") MultipartFile file) {

<<<<<<< HEAD
//         Product currentProduct = this.productService.getProductById(product.getId()).get();
=======
            // Lưu đường dẫn cũ
            String oldPathFile = currentProduct.getImage();
            // Lấy đường dẫn đầy đủ của file chứa
            String fullOldPathFile = this.uploadService.getFullPathFile(oldPathFile, "product");

            // Cập nhật file mới
            if (!file.isEmpty()) {
                // Xóa file cũ
                this.uploadService.deleteFile(fullOldPathFile);

                String img = this.uploadService.handleSaveUploadFile(file, "product");
                currentProduct.setImage(img);
            }
>>>>>>> e11e93178fa4d7967f06c7dd488625ecb97de048

//         if (currentProduct != null) {

//             // Cập nhật file mới
//             if (!file.isEmpty()) {
//                 String img = this.uploadService.handleSaveUploadFile(file, "product");
//                 currentProduct.setImage(img);
//             }

//             currentProduct.setName(product.getName());
//             currentProduct.setPrice(product.getPrice());
//             currentProduct.setDetailDesc(product.getDetailDesc());
//             currentProduct.setShortDesc(product.getShortDesc());
//             currentProduct.setFactory(product.getFactory());
//             currentProduct.setTarget(product.getTarget());
//             currentProduct.setQuantity(product.getQuantity());

<<<<<<< HEAD
//             this.productService.handleSaveProduct(currentProduct);
//         }

//         return "redirect:/admin/product";
//     }

//     // Xóa sản phẩm
//     @GetMapping("/admin/product/delete")
//     public String getMethodName() {
//         return "admin/product/delete";
//     }

// >>>>>>> c77ea160e82668791433e22fa8c5a4394b5300be
// }
=======
    // Xóa sản phẩm
    @GetMapping("/admin/product/delete/{id}")
    public String getDeleteProductPage(Model model, @PathVariable long id) {
        Product product = this.productService.getProductById(id).get();
        model.addAttribute("id", id);
        model.addAttribute("newProduct", new Product());
        return "admin/product/delete";
    }

    @PostMapping("/admin/product/delete")
    public String postDeleteProduct(Model model, @ModelAttribute("newProduct") Product product) {
        this.productService.deleteProductById(product.getId());
        return "redirect:/admin/product";
    }

}
>>>>>>> e11e93178fa4d7967f06c7dd488625ecb97de048
