package com.example.nhom5WebApp_LapTopShop.service;

import java.util.*;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.example.nhom5WebApp_LapTopShop.domain.Cart;
import com.example.nhom5WebApp_LapTopShop.domain.CartDetail;
import com.example.nhom5WebApp_LapTopShop.domain.Order;
import com.example.nhom5WebApp_LapTopShop.domain.OrderDetail;
import com.example.nhom5WebApp_LapTopShop.domain.Product;
import com.example.nhom5WebApp_LapTopShop.domain.User;
import com.example.nhom5WebApp_LapTopShop.domain.DTO.ProductSpecDTO;
import com.example.nhom5WebApp_LapTopShop.repository.CartDetailRepository;
import com.example.nhom5WebApp_LapTopShop.repository.CartRepository;
import com.example.nhom5WebApp_LapTopShop.repository.OrderDetailRepository;
import com.example.nhom5WebApp_LapTopShop.repository.OrderRepository;
import com.example.nhom5WebApp_LapTopShop.repository.ProductRepository;
import com.example.nhom5WebApp_LapTopShop.service.specification.ProductSpec;

import jakarta.servlet.http.HttpSession;

@Service
public class ProductService {

    // Dependency Injection (DI)
    private final ProductRepository productRepository;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;
    private final UserService userService;
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;

    public ProductService(ProductRepository productRepository, CartRepository cartRepository,
            CartDetailRepository cartDetailRepository, UserService userService,
            OrderRepository orderRepository, OrderDetailRepository orderDetailRepository) {
        this.productRepository = productRepository;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.userService = userService;
        this.orderRepository = orderRepository;
        this.orderDetailRepository = orderDetailRepository;
    }

    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }

    public Page<Product> getAllProducts(Pageable pageable) {
        return this.productRepository.findAll(pageable);
    }

    public Page<Product> getAllProductsWithSpec(Pageable pageable, ProductSpecDTO productSpecDTO) {

        // Không truyền lên URL thì mặc định lấy hết sản phẩm
        if (productSpecDTO.getTarget() == null
                && productSpecDTO.getFactory() == null
                && productSpecDTO.getPrice() == null) {
            return this.getAllProducts(pageable);
        }

        // Tạo đối tượng rỗng không có bất kỳ đối tượng nào
        Specification<Product> combinedSpec = Specification.where(null);

        // Filter với mục đích sử dụng
        if (productSpecDTO.getTarget() != null && productSpecDTO.getTarget().isPresent()) {
            Specification<Product> currentSpec = ProductSpec.matchListTarget(productSpecDTO.getTarget().get());
            combinedSpec = combinedSpec.and(currentSpec);
        }
        // Filter với hãng sản xuất
        if (productSpecDTO.getFactory() != null && productSpecDTO.getFactory().isPresent()) {
            Specification<Product> currentSpec = ProductSpec.matchListFactory(productSpecDTO.getFactory().get());
            combinedSpec = combinedSpec.and(currentSpec);
        }
        // Filter với giá cả
        if (productSpecDTO.getPrice() != null && productSpecDTO.getPrice().isPresent()) {
            Specification<Product> currentSpec = this.buildPriceSpecification(productSpecDTO.getPrice().get());
            combinedSpec = combinedSpec.and(currentSpec);
        }

        // Nạp tất cả điều kiện vào combinedSpec để truy vấn một lần

        return this.productRepository.findAll(combinedSpec, pageable);
    }

    public Specification<Product> buildPriceSpecification(List<String> price) {
        // Tạo đối tượng rỗng không có bất kỳ đối tượng nào
        Specification<Product> combinedSpec = Specification.where(null);
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
                combinedSpec = combinedSpec.or(rangeSpec);
            }
        }
        return combinedSpec;
    }

    public Optional<Product> getProductById(long id) {
        return this.productRepository.findById(id);
    }

    public void deleteProduct(long id) {
        this.productRepository.deleteById(id);
    }

    public void handleAddProductToCart(String email, long productId, HttpSession session, long quantity) {

        User user = this.userService.getUserByEmail(email);
        if (user != null) {
            // Check user đã có Cart chưa? Nếu chưa -> tạo mới
            Cart cart = this.cartRepository.findByUser(user);

            if (cart == null) {
                // Tạo mới cart
                Cart otherCart = new Cart();
                otherCart.setUser(user);
                otherCart.setSum(0);

                // Lưu cart
                cart = this.cartRepository.save(otherCart);
            }

            // Tìm product by id
            Optional<Product> productOptional = this.productRepository.findById(productId);
            if (productOptional.isPresent()) {
                Product realProduct = productOptional.get();

                // Kiểm tra xem sản phẩm đã từng được thêm vào giỏ hàng trước đây chưa?
                CartDetail oldDetail = this.cartDetailRepository.findByCartAndProduct(cart, realProduct);
                if (oldDetail == null) {
                    // Lưu cart_detail
                    CartDetail cartDetail = new CartDetail();
                    cartDetail.setCart(cart);
                    cartDetail.setProduct(realProduct);
                    cartDetail.setPrice(realProduct.getPrice());
                    cartDetail.setQuantity(quantity);

                    this.cartDetailRepository.save(cartDetail);

                    // Update cart sum
                    int sum = cart.getSum() + 1;
                    cart.setSum(sum);
                    this.cartRepository.save(cart);
                    // update session
                    session.setAttribute("sum", sum);
                } else {
                    oldDetail.setQuantity(oldDetail.getQuantity() + quantity);

                    this.cartDetailRepository.save(oldDetail);
                }

            }

        }
    }

    public Cart fetchByUser(User user) {
        return this.cartRepository.findByUser(user);
    }

    public void handleRemoveCartDetail(long cartDetailId, HttpSession session) {

        // Tìm cartDetail dựa trên Id
        Optional<CartDetail> cartDetailOptional = this.cartDetailRepository.findById(cartDetailId);
        if (cartDetailOptional.isPresent()) {
            CartDetail cartDetail = cartDetailOptional.get();

            Cart currentCart = cartDetail.getCart();

            // Xóa cartDetail
            this.cartDetailRepository.deleteById(cartDetailId);

            // Update Cart
            if (currentCart.getSum() > 1) {
                int s = currentCart.getSum() - 1;
                currentCart.setSum(s);
                session.setAttribute("sum", s);
            } else {
                // Xóa cart
                this.cartRepository.deleteById(currentCart.getId());
                session.setAttribute("sum", 0);
            }
        }
    }

    public void handleUpdateCartBeforeCheckout(List<CartDetail> cartDetails) {
        for (CartDetail cartDetail : cartDetails) {
            Optional<CartDetail> cdOptional = this.cartDetailRepository.findById(cartDetail.getId());
            if (cdOptional.isPresent()) {
                CartDetail currentCartDetail = cdOptional.get();
                currentCartDetail.setQuantity(cartDetail.getQuantity());
                this.cartDetailRepository.save(currentCartDetail);
            }
        }
    }

    public void handlePlaceOrder(User user, HttpSession session, String receiverName, String receiverAddress,
            String receiverPhone) {

        // Bước 1: Lấy ra cart bởi user
        Cart cart = this.cartRepository.findByUser(user);
        if (cart != null) {
            List<CartDetail> cartDetails = cart.getCartDetails();

            if (cartDetails != null) {
                // Tạo order
                Order order = new Order();
                order.setUser(user);
                order.setReceiverName(receiverName);
                order.setReceiverAddress(receiverAddress);
                order.setReceiverPhone(receiverPhone);
                order.setStatus("PENDING");

                // Tính tổng tiền
                double sum = 0;
                for (CartDetail cartDetail : cartDetails) {
                    sum += cartDetail.getPrice();
                }
                order.setTotalPrice(sum);

                order = this.orderRepository.save(order);

                // Tạo orderDetail
                for (CartDetail cartDetail : cartDetails) {
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setOrder(order);
                    orderDetail.setProduct(cartDetail.getProduct());
                    orderDetail.setPrice(cartDetail.getPrice());
                    orderDetail.setQuantity(cartDetail.getQuantity());

                    this.orderDetailRepository.save(orderDetail);
                }

                // Bước 2: Xóa cartDetail và cart
                for (CartDetail cartDetail : cartDetails) {
                    // Xóa cartDetail
                    this.cartDetailRepository.deleteById(cartDetail.getId());
                }
                // Xóa cart
                this.cartRepository.deleteById(cart.getId());

                // Bước 3: Update session
                session.setAttribute("sum", 0);
            }
        }

    }
}
