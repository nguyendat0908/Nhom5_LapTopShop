<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css">
        <link rel="stylesheet" href="/css/styles.css">
        <title>Tạo mới sản phẩm - Quản trị viên</title>
      </head>

      <body>
        <jsp:include page="../layout/header.jsp" />
        <jsp:include page="../layout/sidebar.jsp" />
        <main class="content">
          <div class="container-fluid px-4">
            <h1>Sản phẩm</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item" aria-current="page">
                <a href="/admin">Bảng điều khiển</a>
              </li>
              <li class="breadcrumb-item" aria-current="page">
                <a href="/admin/product">Sản phẩm</a>
              </li>
              <li class="breadcrumb-item active">Tạo mới sản phẩm</li>
            </ol>
            <div class="container-create-product">
              <h4>Tạo mới một sản phẩm</h4>
              <hr />
              <form:form method="post" id="create-form" action="/admin/product/create" modelAttribute="newProduct"
                enctype="multipart/form-data">
                <div class="row mt-3">
                  <div class="col">
                    <div class="form">
                      <label for="exampleFormControlInput1" class="form-label">Tên sản phẩm:</label>
                      <form:input class="form-control form-control-sm" id="product-name" type="text"
                        aria-label=".form-control-sm example" path="name" />
                      <span></span>
                    </div>
                  </div>
                  <div class="col">
                    <div class="form">
                      <label for="exampleFormControlInput1" class="form-label">Giá:</label>
                      <form:input class="form-control form-control-sm" id="product-price" type="number"
                        aria-label=".form-control-sm example" path="price" />
                      <span></span>
                    </div>
                  </div>
                </div>
                <div class="row mt-3">
                  <div class="mb-3">
                    <label for="product-detail" class="form-label">Mô tả chi tiết sản phẩm:</label>
                    <form:textarea class="form-control form-control-sm" id="product-detail" rows="3"
                      path="detailDesc" />
                    <span></span>
                  </div>
                </div>
                <div class="row mt-3">
                  <div class="col">
                    <div class="form">
                      <label for="exampleFormControlInput1" class="form-label">Mô tả ngắn sản phẩm:</label>
                      <form:input class="form-control form-control-sm" id="product-short" type="text"
                        aria-label=".form-control-sm example" path="shortDesc" />
                      <span></span>
                    </div>
                  </div>
                  <div class="col">
                    <div class="form">
                      <label for="exampleFormControlInput1" class="form-label">Số lượng:</label>
                      <form:input class="form-control form-control-sm" id="product-quantity" type="number"
                        aria-label=".form-control-sm example" path="quantity" />
                      <span></span>
                    </div>
                  </div>
                </div>
                <div class="row mt-3">
                  <div class="col">
                    <label for="exampleFormControlInput1" class="form-label">Hãng:</label>
                    <form:select class="form-select form-select-sm" id="product-factory"
                      aria-label="Small select example" path="factory">
                      <form:option value="APPLE">Apple (Macbook)</form:option>
                      <form:option value="ASUS">Asus</form:option>
                      <form:option value="LENOVO">Lenovo</form:option>
                      <form:option value="DELL">Dell</form:option>
                      <form:option value="LG">LG</form:option>
                      <form:option value="ACER">Acer</form:option>
                    </form:select>
                    <span></span>
                  </div>
                  <div class="col">
                    <label for="exampleFormControlInput1" class="form-label">Mục đích sử dụng:</label>
                    <form:select class="form-select form-select-sm" id="product-target"
                      aria-label="Small select example" path="target">
                      <form:option value="GAMING">Gaming</form:option>
                      <form:option value="SINHVIEN-VANPHONG">Sinh viên - Văn phòng</form:option>
                      <form:option value="THIET-KE-DO-HOA">Thiết kế đồ họa</form:option>
                      <form:option value="MONG-NHE">Mỏng nhẹ</form:option>
                      <form:option value="DOANH-NHAN">Doanh nhân</form:option>
                    </form:select>
                    <span></span>
                  </div>
                </div>
                <div class="row mt-3">
                  <div class="col">
                    <label for="formFileSm" class="form-label">Ảnh sản phẩm:</label>
                    <input class="form-control form-control-sm" id="formFileSm" type="file" accept=".png, .jpg, .jpeg"
                      name="uploadFile" />
                    <span></span>
                  </div>
                  <div class="mt-4">
                    <img style="width: 300px; display: none;" src="" id="img-thumbnail" alt="...">
                  </div>
                </div>
                <div>
                  <button type="submit" class="btn btn-success mt-4" id="submit-form">Tạo mới</button>
                </div>
              </form:form>
            </div>

        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
          crossorigin="anonymous"></script>
        <script src="/js/scripts.js"></script>
        <script src="/js/validate.js"></script>
      </body>

      </html>