<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>Danh sách sản phẩm - Quản trị viên</title>
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
          <li class="breadcrumb-item active" aria-current="page">Sản phẩm</li>
        </ol>
        <div class="mt-5">
          <div class="d-flex justify-content-between">
            <h4>Danh sách sản phẩm</h4>
            <a href="/admin/product/create" class="btn btn-primary">Tạo mới một sản phẩm</a>
          </div>
          <hr />
          <table class="table table-bordered align-middle text-center">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Giá</th>
                <th scope="col">Hãng</th>
                <th scope="col">Hành động</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="product" items="${products}">
                <tr>
                  <td>${product.id}</td>
                  <td>${product.name}</td>
                  <td>
                    <fmt:formatNumber value="${product.price}" type="number" />
                    đ
                  </td>
                  <td>${product.factory}</td>
                  <td>
                    <a href="/admin/product/${product.id}" class="btn btn-success mx-1"
                      >Xem chi tiết</a
                    >
                    <a
                      href="/admin/product/update/${product.id}"
                      class="btn btn-warning mx-1"
                      >Cập nhật</a
                    >
                    <a
                      href="/admin/product/delete/${product.id}"
                      class="btn btn-danger mx-1"
                      >Xóa</a
                    >
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
          <nav aria-label="Page navigation example">
            <ul class="pagination mt-5 justify-content-center">
              <li class="page-item">
                <a class="${1 eq currentPage ? 'disabled page-link' : page-link}" href="/admin/product?page=${currentPage - 1}" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <c:forEach begin="0" end="${totalPage - 1}" varStatus="loop">
                <li class="page-item">
                  <a class="${(loop.index + 1) eq currentPage ? 'active page-link' : 'page-link'}" 
                      href="/admin/product?page=${loop.index + 1}">
                      ${loop.index + 1}
                  </a>
                </li>
              </c:forEach>
              <li class="page-item">
                <a class="${totalPage eq currentPage ? 'disabled page-link' : 'page-link'}" href="/admin/product?page=${currentPage + 1}" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </main>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
