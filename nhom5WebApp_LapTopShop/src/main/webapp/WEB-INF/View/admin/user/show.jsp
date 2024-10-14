<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css" />
      <link rel="stylesheet" href="/css/styles.css" />
      <title>Danh sách người dùng - Quản trị viên</title>
    </head>

    <body>
      <jsp:include page="../layout/header.jsp" />
      <jsp:include page="../layout/sidebar.jsp" />
      <main class="content">
        <div class="container-fluid px-4">
          <h1>Người dùng</h1>
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">
              <a href="/admin">Bảng điều khiển</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Người dùng</li>
          </ol>
          <div class="d-flex justify-content-between">
            <h4>Danh sách người dùng</h4>
            <a href="/admin/user/create" class="btn btn-primary">Tạo mới một người dùng</a>
          </div>
          <hr />
          <div class="mt-5">
            <table class="table table-bordered align-middle text-center">
              <thead>
                <tr>
                  <th scope="col">ID</th>
                  <th scope="col">Email</th>
                  <th scope="col">Full Name</th>
                  <th scope="col">Role</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${users1}" var="user">
                  <tr>

                    <th scope="row">${user.id}</th>
                    <td>${user.email}</td>
                    <td>${user.fullName}</td>
                    <td>${role.name}</td>
                    <td>
                      <a href="/admin/user/view/${user.id}" class="btn btn-success mx-1">View</a>
                      <a href="/admin/user/update/${user.id}" class="btn btn-warning mx-1">Update</a>
                      <a href="admin/user/delete/${user.id}" class="btn btn-danger mx-1">Delete</a>
                    </td>
                  </tr>
                </c:forEach>


              </tbody>
            </table>
            <nav aria-label="Page navigation example">
              <ul class="pagination mt-5 justify-content-center">
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li class="page-item active">
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
      </main>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>

    </html>