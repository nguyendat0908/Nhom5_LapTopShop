<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css"
    />
    <link rel="stylesheet" href="/client/css/style.css" />
    <title>Sản phẩm - Laptopshop</title>
  </head>

  <body>
    <jsp:include page="../layout/header.jsp" />
    <div class="container-client-product">
      <div>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <a href="/">Home</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            Danh sách sản phẩm
          </li>
        </ol>
      </div>
      <div class="client-product">
        <div class="client-product-filtering">
          <form action="">
            <div>
              <div class="form-filter" id="factoryFilter">
                <p>Hãng sản xuất</p>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    class="factory-filter"
                    type="checkbox"
                    value="APPLE"
                    id="factory-1"
                  />
                  <label class="form-check-label" for="factory-1">
                    Apple
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    class="factory-filter"
                    type="checkbox"
                    value="ASUS"
                    id="factory-2"
                  />
                  <label class="form-check-label" for="factory-2"> Asus </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    class="factory-filter"
                    type="checkbox"
                    value="LENOVO"
                    id="factory-3"
                  />
                  <label class="form-check-label" for="factory-3">
                    Lenovo
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    class="factory-filter"
                    type="checkbox"
                    value="DELL"
                    id="factory-4"
                  />
                  <label class="form-check-label" for="factory-4"> Dell </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    class="factory-filter"
                    type="checkbox"
                    value="LG"
                    id="factory-5"
                  />
                  <label class="form-check-label" for="factory-5"> LG </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    class="factory-filter"
                    type="checkbox"
                    value="ACER"
                    id="factory-6"
                  />
                  <label class="form-check-label" for="factory-6"> Acer </label>
                </div>
              </div>
            </div>
            <div>
              <div class="form-filter" id="targetFilter">
                <p>Mục đích sử dụng</p>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value="GAMING"
                    id="target-1"
                  />
                  <label class="form-check-label" for="target-1">
                    Gaming
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value="SINHVIEN-VANPHONG"
                    id="target-2"
                  />
                  <label class="form-check-label" for="target-2">
                    Sinh viên-Văn phòng
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value="THIET-KE-DO-HOA"
                    id="target-3"
                  />
                  <label class="form-check-label" for="target-3">
                    Thiết kế đồ họa
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value="MONG-NHE"
                    id="target-4"
                  />
                  <label class="form-check-label" for="target-4">
                    Mỏng nhẹ
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value="DOANH-NHAN"
                    id="target-5"
                  />
                  <label class="form-check-label" for="target-5">
                    Doanh nhân
                  </label>
                </div>
              </div>
            </div>
            <div>
              <div class="form-filter" id="priceFilter">
                <p>Mức giá</p>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value="duoi-10-trieu"
                    id="price-2"
                  />
                  <label class="form-check-label" for="price-2">
                    Dưới 10 triệu
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value="10-15-trieu"
                    id="price-3"
                  />
                  <label class="form-check-label" for="price-3">
                    Từ 10-15 triệu
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value="15-20-trieu"
                    id="price-4"
                  />
                  <label class="form-check-label" for="price-4">
                    Từ 15-20 Triệu
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value="tren-20-trieu"
                    id="price-5"
                  />
                  <label class="form-check-label" for="price-5">
                    Trên 20 triệu
                  </label>
                </div>
              </div>
            </div>
            <div>
              <div class="form-filter">
                <p>Sắp xếp</p>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="radio"
                    value="gia-tang-dan"
                    id="sort-1"
                  />
                  <label
                    class="form-check-label"
                    for="sort-1"
                    name="radio-sort"
                  >
                    Giá tăng dần
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="radio"
                    value="gia-giam-dan"
                    id="sort-2"
                  />
                  <label
                    class="form-check-label"
                    for="sort-2"
                    name="radio-sort"
                  >
                    Giá giảm dần
                  </label>
                </div>
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="radio"
                    value=""
                    id="sort-3"
                    checked
                  />
                  <label
                    class="form-check-label"
                    for="sort-3"
                    name="radio-sort"
                  >
                    Không sắp xếp
                  </label>
                </div>
              </div>
            </div>
            <button type="submit" class="btn btn-outline-success custom-btn">
              Lọc Sản Phẩm
            </button>
          </form>
        </div>
        <div class="client-product-content">
          <div class="row g-4">
            <div class="col-md-6 col-lg-5 col-xl-4">
              <div
                class="product border border-dark-subtle rounded-4 overflow-hidden"
              >
                <div class="product-img overflow-hidden">
                  <a href="#"
                    ><img
                      src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                      alt=""
                  /></a>
                </div>
                <span class="label bg-warning rounded-3 text-white px-2 py-1"
                  >Laptop</span
                >
                <div class="product-desc text-center">
                  <p class="fs-6 mt-3 mb-0">
                    <a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                  </p>
                  <p class="fs-7 text-secondary mt-1">
                    <span>i5-10300H</span>, <span>RAM 8GB</span>
                  </p>
                  <p class="mb-0">17.000.000 <span>đ</span></p>
                  <a
                    href="#"
                    class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"
                    ><i class="bx bxs-shopping-bag"></i>Thêm vào giỏ hàng</a
                  >
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-5 col-xl-4">
              <div
                class="product border border-dark-subtle rounded-4 overflow-hidden"
              >
                <div class="product-img overflow-hidden">
                  <a href="#"
                    ><img
                      src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                      alt=""
                  /></a>
                </div>
                <span class="label bg-warning rounded-3 text-white px-2 py-1"
                  >Laptop</span
                >
                <div class="product-desc text-center">
                  <p class="fs-6 mt-3 mb-0">
                    <a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                  </p>
                  <p class="fs-7 text-secondary mt-1">
                    <span>i5-10300H</span>, <span>RAM 8GB</span>
                  </p>
                  <p class="mb-0">17.000.000 <span>đ</span></p>
                  <a
                    href="#"
                    class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"
                    ><i class="bx bxs-shopping-bag"></i>Thêm vào giỏ hàng</a
                  >
                </div>
              </div>
            </div>

            <div class="col-md-6 col-lg-5 col-xl-4">
              <div
                class="product border border-dark-subtle rounded-4 overflow-hidden"
              >
                <div class="product-img overflow-hidden">
                  <a href="#"
                    ><img
                      src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                      alt=""
                  /></a>
                </div>
                <span class="label bg-warning rounded-3 text-white px-2 py-1"
                  >Laptop</span
                >
                <div class="product-desc text-center">
                  <p class="fs-6 mt-3 mb-0">
                    <a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                  </p>
                  <p class="fs-7 text-secondary mt-1">
                    <span>i5-10300H</span>, <span>RAM 8GB</span>
                  </p>
                  <p class="mb-0">17.000.000 <span>đ</span></p>
                  <a
                    href="#"
                    class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"
                    ><i class="bx bxs-shopping-bag"></i>Thêm vào giỏ hàng</a
                  >
                </div>
              </div>
            </div>
          </div>

          <div style="margin-top: 10px" class="row g-4">
            <div class="col-md-6 col-lg-5 col-xl-4">
              <div
                class="product border border-dark-subtle rounded-4 overflow-hidden"
              >
                <div class="product-img overflow-hidden">
                  <a href="#"
                    ><img
                      src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                      alt=""
                  /></a>
                </div>
                <span class="label bg-warning rounded-3 text-white px-2 py-1"
                  >Laptop</span
                >
                <div class="product-desc text-center">
                  <p class="fs-6 mt-3 mb-0">
                    <a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                  </p>
                  <p class="fs-7 text-secondary mt-1">
                    <span>i5-10300H</span>, <span>RAM 8GB</span>
                  </p>
                  <p class="mb-0">17.000.000 <span>đ</span></p>
                  <a
                    href="#"
                    class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"
                    ><i class="bx bxs-shopping-bag"></i>Thêm vào giỏ hàng</a
                  >
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-5 col-xl-4">
              <div
                class="product border border-dark-subtle rounded-4 overflow-hidden"
              >
                <div class="product-img overflow-hidden">
                  <a href="#"
                    ><img
                      src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                      alt=""
                  /></a>
                </div>
                <span class="label bg-warning rounded-3 text-white px-2 py-1"
                  >Laptop</span
                >
                <div class="product-desc text-center">
                  <p class="fs-6 mt-3 mb-0">
                    <a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                  </p>
                  <p class="fs-7 text-secondary mt-1">
                    <span>i5-10300H</span>, <span>RAM 8GB</span>
                  </p>
                  <p class="mb-0">17.000.000 <span>đ</span></p>
                  <a
                    href="#"
                    class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"
                    ><i class="bx bxs-shopping-bag"></i>Thêm vào giỏ hàng</a
                  >
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-5 col-xl-4">
              <div
                class="product border border-dark-subtle rounded-4 overflow-hidden"
              >
                <div class="product-img overflow-hidden">
                  <a href="#"
                    ><img
                      src="https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg"
                      alt=""
                  /></a>
                </div>
                <span class="label bg-warning rounded-3 text-white px-2 py-1"
                  >Laptop</span
                >
                <div class="product-desc text-center">
                  <p class="fs-6 mt-3 mb-0">
                    <a href="#" class="text-black">Laptop Asus TUF Gaming</a>
                  </p>
                  <p class="fs-7 text-secondary mt-1">
                    <span>i5-10300H</span>, <span>RAM 8GB</span>
                  </p>
                  <p class="mb-0">17.000.000 <span>đ</span></p>
                  <a
                    href="#"
                    class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"
                    ><i class="bx bxs-shopping-bag"></i>Thêm vào giỏ hàng</a
                  >
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
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
