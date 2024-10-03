<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css">
    <link rel="stylesheet" href="../../../../resources/css/styles.css">
    <title>Document</title>
  </head>

  <body>
    <jsp:include page="../layout/header.jsp" />
    <jsp:include page="../layout/sidebar.jsp" />
    <main class="content">
      <div class="container-fluid px-4">
        <h1>Product</h1>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <a href="/admin">Dashboard</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            <a href="/admin/product">Product</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            View detail product
          </li>
        </ol>
      </div>

      <div class="container-view-product">
        <div class="h4 pb-2 mb-3 border-bottom">
          Product detail with ID: ${id}
        </div>

        <ul class="list-group">
          <li class="list-group-item">
            <img
              style="width: 300px"
              src="https://deviet.vn/wp-content/uploads/2019/04/vuong-quoc-anh.jpg"
              class="img-thumbnail"
              alt="..."
            />
          </li>

          <li class="list-group-item list-group-item-dark">
            Product Infomation
          </li>
          <li class="list-group-item">ID : ${id}</li>
          <li class="list-group-item">Name : ${product.name}</li>
          <li class="list-group-item">
            Price :
            <fmt:formatNumber value="${product.price}" type="number" /> đ
          </li>
          <li class="list-group-item">Factory : ${product.factory}</li>
          <li class="list-group-item">Target : ${product.target}</li>
        </ul>
        <a href="/admin/product" class="btn btn-success mt-3">Back</a>
      </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
  </body>

  </html>