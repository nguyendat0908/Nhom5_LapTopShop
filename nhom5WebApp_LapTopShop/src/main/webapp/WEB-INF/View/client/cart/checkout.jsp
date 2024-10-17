<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css">
        <link rel="stylesheet"
            href="http://localhost:8080/Nhom5_LapTopShop/nhom5WebApp_LapTopShop/src/main/webapp/resources/client/css/style.css" />
        <title>Document</title>
    </head>

    <body>
        <jsp:include page="../layout/header.jsp" />
        <div class="container-fluid">
            <div class="content">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">
                        <a href="#" class="text-color-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item" aria-current="page">Chi tiết giỏ hàng</li>
                </ol>
                <div class="product-list">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Tên</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Thành tiền</th>
                                <th scope="col">Xử lý</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="product-item">
                                <td><img src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-650-80.jpg.webp"
                                        alt="" class="cart-img"></td>
                                <td>
                                    <p>Laptop ASUS TUF Gaming</p>
                                </td>
                                <td><span class="price">17,000,000</span> <span>đ</span></td>
                                <td>
                                    <div class="d-flex">
                                        <button class="btn-minus btn-quantity bg-body-secondary rounded-circle"><i
                                                class='bx bx-minus text-secondary fw-bold m-0'></i></button>
                                        <input type="text" value="1" class="quantity" class="text-secondary">
                                        <button class="btn-plus btn-quantity bg-body-secondary rounded-circle "><i
                                                class='bx bx-plus text-secondary fw-bold m-0'></i></button>
                                    </div>
                                </td>
                                <td><span class="total-price"></span> <span>đ</span></td>
                                <td>
                                    <button class="btn-cancel"><i class='bx bx-x text-danger fw-bold'></i></button>
                                </td>
                            </tr>
                            <tr class="product-item">
                                <td><img src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-650-80.jpg.webp"
                                        alt="" class="cart-img"></td>
                                <td>
                                    <p>Laptop ASUS TUF Gaming</p>
                                </td>
                                <td><span class="price">17,000,000</span> <span>đ</span></td>
                                <td>
                                    <div class="d-flex">
                                        <button class="btn-minus btn-quantity bg-body-secondary rounded-circle"><i
                                                class='bx bx-minus text-secondary fw-bold m-0'></i></button>
                                        <input type="text" value="1" class="quantity" class="text-secondary">
                                        <button class="btn-plus btn-quantity bg-body-secondary rounded-circle "><i
                                                class='bx bx-plus text-secondary fw-bold m-0'></i></button>
                                    </div>
                                </td>
                                <td><span class="total-price"></span> <span>đ</span></td>
                                <td>
                                    <button class="btn-cancel"><i class='bx bx-x text-danger fw-bold'></i></button>
                                </td>
                            </tr>
                            <tr class="product-item">
                                <td><img src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-650-80.jpg.webp"
                                        alt="" class="cart-img"></td>
                                <td>
                                    <p>Laptop ASUS TUF Gaming</p>
                                </td>
                                <td><span class="price">17,000,000</span> <span>đ</span></td>
                                <td>
                                    <div class="d-flex">
                                        <button class="btn-minus btn-quantity bg-body-secondary rounded-circle"><i
                                                class='bx bx-minus text-secondary fw-bold m-0'></i></button>
                                        <input type="text" value="1" class="quantity" class="text-secondary">
                                        <button class="btn-plus btn-quantity bg-body-secondary rounded-circle "><i
                                                class='bx bx-plus text-secondary fw-bold m-0'></i></button>
                                    </div>
                                </td>
                                <td><span class="total-price"></span> <span>đ</span></td>
                                <td>
                                    <button class="btn-cancel"><i class='bx bx-x text-danger fw-bold'></i></button>
                                </td>
                            </tr>
                            <tr class="product-item">
                                <td><img src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-650-80.jpg.webp"
                                        alt="" class="cart-img"></td>
                                <td>
                                    <p>Laptop ASUS TUF Gaming</p>
                                </td>
                                <td><span class="price">17,000,000</span> <span>đ</span></td>
                                <td>
                                    <div class="d-flex">
                                        <button class="btn-minus btn-quantity bg-body-secondary rounded-circle"><i
                                                class='bx bx-minus text-secondary fw-bold m-0'></i></button>
                                        <input type="text" value="1" class="quantity" class="text-secondary">
                                        <button class="btn-plus btn-quantity bg-body-secondary rounded-circle "><i
                                                class='bx bx-plus text-secondary fw-bold m-0'></i></button>
                                    </div>
                                </td>
                                <td><span class="total-price"></span> <span>đ</span></td>
                                <td>
                                    <button class="btn-cancel"><i class='bx bx-x text-danger fw-bold'></i></button>
                                </td>
                            </tr>



                        </tbody>
                    </table>

                </div>
                <form action="" id="form-checkout">
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="checkout-content">
                            <div class="form-checkout mt-4">
                                <label for="consignee-name" class="text-secondary mb-1">Tên người nhận</label>
                                <input id="consignee-name" name="consignee-name" class="form-control" type="text"
                                    placeholder="Nhập tên" required>
                                <span></span>
                            </div>
                            <div class="form-checkout mt-4">
                                <label for="consignee-addr" class="text-secondary mb-1">Địa chỉ người nhận</label>
                                <input id="consignee-addr" name="consignee-addr" class="form-control" type="text"
                                    placeholder="Nhập địa chỉ" required>
                                <span></span>
                            </div>
                            <div class="form-checkout mt-4">
                                <label for="consignee-phone" class="text-secondary mb-1">Số điện thoại</label>
                                <input id="consignee-phone  name=" consignee-phone" class="form-control" type="text"
                                    placeholder="Nhập SĐT" required>
                                <span></span>
                            </div>
                            <a href="./show.jsp" class="text-color-primary d-flex  align-items-center mt-5"><i
                                    class='bx bx-left-arrow-alt text-color-primary m-0 fs-5'></i>Quay lại
                                giỏ hàng</a>
                        </div>
                        <div class="order-info mt-5 checkout-content">
                            <h1>Thông Tin Đơn Hàng</h1>
                            <div class="d-flex justify-content-between mt-4">
                                <span>Tạm tính:</span>
                                <div><span id="pay"></span> đ</div>
                                <input type="hidden" id="hidden-pay" name="pay">
                            </div>

                            <div class="border-bottom d-flex justify-content-between mt-4">
                                <span>Phí vận chuyển:</span>
                                <div><span id="ship">100,000</span> đ</div>
                                <input type="hidden" id="hidden-ship" name="ship">
                            </div>
                            <div class="d-flex justify-content-between mt-4 mb-5">
                                <span>Tổng số tiền:</span>
                                <div><span id="total-pay"></span> đ</div>
                                <input type="hidden" id="hidden-total-pay" name="totalPay">
                            </div>
                            <button type="submit" id="checkout-form"
                                class="btn btn-warning rounded-pill py-2 px-4 text-white">XÁC NHẬN
                                THANH
                                TOÁN</button>
                        </div>

                    </div>
                </form>

            </div>
        </div>
        <jsp:include page="../layout/footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
        <script src="../../../../resources/client/js/checkout.js"></script>
        <script src="../../../../resources/client/js/cart.js"></script>


    </body>

    </html>