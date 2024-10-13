<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css">
    <link rel="stylesheet" href="/css/styles.css">
    <title>Xóa người dùng - Quản trị viên</title>
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
          <li class="breadcrumb-item active" aria-current="page">Xóa người dùng</li>
        </ol>
        <div style="width: 800px" class="container-delete-user">

          <div class="h4 pb-2 mb-4 border-bottom ">
            Xóa người dùng với ID : 5
          </div>

          <div class="row">
            <div style="border-radius: 20px;" class="p-3 mb-2 bg-danger-subtle text-danger-emphasis">Bạn có chắc chắn muốn xóa người dùng này?</div>
          </div>
          <form:form method="post" modelAttribute="newUser" action="/admin/user/delete">
                                    <div class="mb-3" style="display: none;">
                                        <label class="form-label">Id</label>
                                        <form:input type="text" class="form-control" path="id" value="${id}"/>
                                    </div>
                                    <button class="btn btn-danger">Xác nhận</button>
                                </form:form>

        </div>

    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
  </body>

  </html>