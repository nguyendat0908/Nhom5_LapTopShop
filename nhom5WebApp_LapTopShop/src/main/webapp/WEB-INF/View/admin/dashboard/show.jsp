<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css">
    <link rel="stylesheet"
      href="/css/styles.css" />
    <title>Bảng điều khiển - Quản trị viên</title>
  </head>

  <body>
    <jsp:include page="../layout/header.jsp" />
    <jsp:include page="../layout/sidebar.jsp" />
    <main class="content">
      <div class="container-fluid px-4">
        <h1>Bảng điều khiển</h1>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">Thống kê</li>
        </ol>
        <div class="row">
          <div class="col-xl-4 col-md-6">
            <div class="card bg-primary text-white mt-4">
              <div class="card-body">Số lượng người dùng</div>
              <div class="card-footer">
                <a class="small text-white" href="/admin/user">Xem chi tiết</a>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6">
            <div class="card bg-warning text-white mt-4">
              <div class="card-body">Số lượng sản phẩm</div>
              <div class="card-footer">
                <a class="small text-white" href="/admin/product">Xem chi tiết</a>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6">
            <div class="card bg-success text-white mt-4">
              <div class="card-body">Số lượng đơn hàng</div>
              <div class="card-footer">
                <a class="small text-white" href="/admin/order">Xem chi tiết</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- <jsp:include page="../layout/footer.jsp" />g -->
    </main>
  </body>

  </html>