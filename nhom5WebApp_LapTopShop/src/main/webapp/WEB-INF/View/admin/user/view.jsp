<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>
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
    <title>Xem chi tiết người dùng - Quản trị viên</title>
  </head>

  <body>
    <jsp:include page="../layout/header.jsp" />
    <jsp:include page="../layout/sidebar.jsp" />
    <main class="content">
      <div class="container-fluid px-4">
        <h1>Người dùng</h1>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">Bảng điều khiển</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">Người dùng</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            Xem chi tiết người dùng
          </li>
        </ol>
      </div>

      <div class="container-view-user">
        <div class="h4 pb-2 mb-3 border-bottom ">
          User detail with ID: 5
        </div>

        <ul class="list-group">
          <li class="list-group-item list-group-item-dark">User Infomation</li>
          <li class="list-group-item">ID : 5</li>
          <li class="list-group-item">Email : nguyendat1@gmail.com</li>
          <li class="list-group-item">Full Name : Nguyen Dat</li>
          <li class="list-group-item">Roll : User</li>
          <li class="list-group-item">Adress :</li>
          <li class="list-group-item">Avatar : </li>
        </ul>
        <div style="padding-top: 10px;">
          <button type="button" class="cbtn btn-sucess">Back</button>
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
