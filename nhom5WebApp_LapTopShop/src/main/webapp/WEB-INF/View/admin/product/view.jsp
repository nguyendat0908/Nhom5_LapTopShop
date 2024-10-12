<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%> <%@ taglib
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
    <link rel="stylesheet" href="/css/styles.css" />
    <title>Xem chi tiết sản phẩm - Quản trị viên</title>
  </head>

  <body>
    <jsp:include page="../layout/header.jsp" />
    <jsp:include page="../layout/sidebar.jsp" />
    <main class="content">
      <div class="container-fluid px-4">
        <h1>Sản phẩm</h1>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <a href="/admin">Bảng điều khiển</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            <a href="/admin/product">Sản phẩm</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            Xem chi tiết sản phẩm
          </li>
        </ol>
      </div>

      <div class="container-view-product">
        <div class="h4 pb-2 mb-3 border-bottom">
          Chi tiết sản phẩm với ID: ${id}
        </div>

        <ul class="list-group">
          <li class="list-group-item">
            <img
              style="width: 300px"
              src="/images/product/${product.image}"
              class="img-thumbnail"
              alt="..."
            />
          </li>

          <li class="list-group-item list-group-item-dark">
            Thông tin sản phẩm
          </li>
          <li class="list-group-item">ID : ${id}</li>
          <li class="list-group-item">Tên sản phẩm : ${product.name}</li>
          <li class="list-group-item">
            Giá:
            <fmt:formatNumber value="${product.price}" type="number" /> đ
          </li>
          <li class="list-group-item">Hãng : ${product.factory}</li>
          <li class="list-group-item">Mục đích : ${product.target}</li>
        </ul>
        <a href="/admin/product" class="btn btn-success mt-3">Trở về</a>
      </div>
    </main>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
