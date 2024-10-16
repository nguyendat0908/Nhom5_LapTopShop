<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <title>Trang chủ - Laptopshop</title>
  </head>

  <body>
    <jsp:include page="../layout/header.jsp" />
    <jsp:include page="../layout/banner.jsp" />
    <div class="container-fluid">
      <div class="content">
        <div class="d-flex justify-content-between align-items-center my-4">
          <h2 class="fw-bold">Sản phẩm nổi bật</h2>
          <a href="/products" class="btn btn-warning rounded-pill text-white"
            >Tất cả sản phẩm</a
          >
        </div>
        <div>
          <div class="row g-4">
            <div class="col-md-6 col-lg-4 col-xl-3">
              <c:forEach var="product" items="${products}">
                <div
                  class="product border border-dark-subtle rounded-4 overflow-hidden"
                >
                  <div class="product-img overflow-hidden">
                    <a href="#"
                      ><img src="/images/product/${product.image}" alt="" />
                    </a>
                  </div>
                  <span class="label bg-warning rounded-3 text-white px-2 py-1"
                    >${product.factory}</span
                  >
                  <div class="product-desc text-center">
                    <p class="fs-6 mt-3 mb-0">
                      <a href="#" class="text-black">${product.name}</a>
                    </p>
                    <p class="fs-7 text-secondary mt-1">
                      <span>${product.shortDesc}</span>
                    </p>
                    <p class="mb-0">
                      <fmt:formatNumber
                        type="number"
                        value="${product.price}"
                      />
                      đ
                    </p>
                    <a
                      href="#"
                      class="btn rounded-pill border border-warning-subtle text-success-emphasis mt-4"
                    >
                      <i class="bx bxs-shopping-bag"></i>Thêm vào giỏ hàng</a
                    >
                  </div>
                </div>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="../layout/feature.jsp" />
    <jsp:include page="../layout/footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
