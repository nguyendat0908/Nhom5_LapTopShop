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
        <div class="container-client-product">
            <div>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">
                        <a href="">Home</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Danh sách sản phẩm </li>
                </ol>
            </div>
            <div class="client-product">

                <div class="client-product-filtering">
                    <form action="">
                        <div>
                            <p>Hãng sản xuất</p>
                            <div class="form-filter">
                                <div class="form-check">
                                    <input class="form-check-input" class="factory-filter" type="checkbox"
                                        name="factory" value="APPLE" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Apple
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" class="factory-filter" type="checkbox"
                                        name="factory" value="ASUS" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        ASUS
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" class="factory-filter" type="checkbox"
                                        value="LENOVO" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        LENOVO
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" class="factory-filter" type="checkbox" value="DELL"
                                        id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        DELL
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" class="factory-filter" type="checkbox" value="LG"
                                        id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        LG
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" class="factory-filter" type="checkbox" value="ACER"
                                        id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        ACER
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div>
                            <p>Mục đích sử dụng</p>
                            <div class="form-filter">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="GAMING"
                                        id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Gaming
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Sinh viên-Văn phòng
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Thiết kế đồ họa
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Mỏng nhẹ
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Doanh nhân
                                    </label>
                                </div>

                            </div>
                        </div>
                        <div>
                            <p>Mức giá</p>
                            <div class="form-filter">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"
                                        name="">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Dưới 10 Triệu
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Từ 10-15 Triệu
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Từ 15-20 Triệu
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Trên 20 triệu
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div>
                            <p>Sắp xếp</p>
                            <div class="form-filter">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Giá tăng dần
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Giá giảm dần
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Không
                                    </label>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-outline-success custom-btn">Lọc Sản Phẩm</button>

                    </form>
                </div>
                <div class="client-product-content">
                    <div class="row g-4">
                        <div class="col-md-6 col-lg-5 col-xl-4">
                            <div class="product border border-dark-subtle rounded-4 overflow-hidden">
                                <div class="product-img overflow-hidden"><a href="#"><img
                                            src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                                            alt=""></a>
                                </div>
                                <span class="label bg-warning rounded-3 text-white px-2 py-1">Laptop</span>
                                <div class="product-desc text-center">
                                    <p class="fs-6 mt-3 mb-0"><a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                                    </p>
                                    <p class="fs-7 text-secondary mt-1"><span>i5-10300H</span>, <span>RAM 8GB</span></p>
                                    <p class="mb-0">17.000.000 <span>đ</span></p>
                                    <a href="#"
                                        class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"><i
                                            class='bx bxs-shopping-bag'></i>Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-5 col-xl-4">
                            <div class="product border border-dark-subtle rounded-4 overflow-hidden">
                                <div class="product-img overflow-hidden"><a href="#"><img
                                            src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                                            alt=""></a>
                                </div>
                                <span class="label bg-warning rounded-3 text-white px-2 py-1">Laptop</span>
                                <div class="product-desc text-center">
                                    <p class="fs-6 mt-3 mb-0"><a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                                    </p>
                                    <p class="fs-7 text-secondary mt-1"><span>i5-10300H</span>, <span>RAM 8GB</span></p>
                                    <p class="mb-0">17.000.000 <span>đ</span></p>
                                    <a href="#"
                                        class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"><i
                                            class='bx bxs-shopping-bag'></i>Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-5 col-xl-4">
                            <div class="product border border-dark-subtle rounded-4 overflow-hidden">
                                <div class="product-img overflow-hidden"><a href="#"><img
                                            src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                                            alt=""></a>
                                </div>
                                <span class="label bg-warning rounded-3 text-white px-2 py-1">Laptop</span>
                                <div class="product-desc text-center">
                                    <p class="fs-6 mt-3 mb-0"><a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                                    </p>
                                    <p class="fs-7 text-secondary mt-1"><span>i5-10300H</span>, <span>RAM 8GB</span></p>
                                    <p class="mb-0">17.000.000 <span>đ</span></p>
                                    <a href="#"
                                        class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"><i
                                            class='bx bxs-shopping-bag'></i>Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div style="margin-top: 10px;" class="row g-4">

                        <div class="col-md-6 col-lg-5 col-xl-4">
                            <div class="product border border-dark-subtle rounded-4 overflow-hidden">
                                <div class="product-img overflow-hidden"><a href="#"><img
                                            src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                                            alt=""></a>
                                </div>
                                <span class="label bg-warning rounded-3 text-white px-2 py-1">Laptop</span>
                                <div class="product-desc text-center">
                                    <p class="fs-6 mt-3 mb-0"><a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                                    </p>
                                    <p class="fs-7 text-secondary mt-1"><span>i5-10300H</span>, <span>RAM 8GB</span></p>
                                    <p class="mb-0">17.000.000 <span>đ</span></p>
                                    <a href="#"
                                        class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"><i
                                            class='bx bxs-shopping-bag'></i>Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-5 col-xl-4">
                            <div class="product border border-dark-subtle rounded-4 overflow-hidden">
                                <div class="product-img overflow-hidden"><a href="#"><img
                                            src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                                            alt=""></a>
                                </div>
                                <span class="label bg-warning rounded-3 text-white px-2 py-1">Laptop</span>
                                <div class="product-desc text-center">
                                    <p class="fs-6 mt-3 mb-0"><a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                                    </p>
                                    <p class="fs-7 text-secondary mt-1"><span>i5-10300H</span>, <span>RAM 8GB</span></p>
                                    <p class="mb-0">17.000.000 <span>đ</span></p>
                                    <a href="#"
                                        class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"><i
                                            class='bx bxs-shopping-bag'></i>Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-5 col-xl-4">
                            <div class="product border border-dark-subtle rounded-4 overflow-hidden">
                                <div class="product-img overflow-hidden"><a href="#"><img
                                            src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                                            alt=""></a>
                                </div>
                                <span class="label bg-warning rounded-3 text-white px-2 py-1">Laptop</span>
                                <div class="product-desc text-center">
                                    <p class="fs-6 mt-3 mb-0"><a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                                    </p>
                                    <p class="fs-7 text-secondary mt-1"><span>i5-10300H</span>, <span>RAM 8GB</span></p>
                                    <p class="mb-0">17.000.000 <span>đ</span></p>
                                    <a href="#"
                                        class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"><i
                                            class='bx bxs-shopping-bag'></i>Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <nav aria-label="Page navigation example">
                        <ul class="pagination mt-5 justify-content-center">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>

                </div>


            </div>
        </div>



        <jsp:include page="../layout/footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    </body>

    </html>