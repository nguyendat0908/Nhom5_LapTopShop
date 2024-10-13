<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <title>Tạo mới người dùng - Quản trị viên</title>
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
              <li class="breadcrumb-item active" aria-current="page"></li>
              <a href="/admin/user">Người dùng</a>
              <li class="breadcrumb-item active" aria-current="page"></li>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Tạo mới người dùng</li>
            </ol>
            <div class="container-create-user">

              <div class="container-view-user">
                <div class="h4 pb-2 mb-2 border-bottom ">
                  Tạo mới một người dùng
                </div>
                <form:form method="post" action="/admin/user/create" modelAttribute="newUser"
                  enctype="multipart/form-data">
                  <div class="row">
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Email:</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="email" />
                      </div>
                    </div>
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Mật khẩu:</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="password" />
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Số điện thoại:</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="phone" />
                      </div>
                    </div>
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Họ và tên:</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="fullName" />
                      </div>
                    </div>

                  </div>
                  <div class="row">
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Địa chỉ:</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="address" />
                      </div>
                    </div>
                  </div>
                  <div style="padding-bottom: 10px;" class="row">
                    <div class="col">
                      <label for="exampleFormControlInput1" class="form-label">Vai trò: </label>
                      <form:select class="form-select form-select-sm" aria-label="Small select example"
                        path="role.name">
                        <form:option value="ADMIN">ADMIN</form:option>
                        <form:option value="USER">USER</form:option>
                      </form:select>
                    </div>
                    <div class="col">
                      <div class="col-12">
                        <label for="formFileSm" class="form-label">Ảnh đại diện:</label>
                        <input class="form-control form-control-sm" id="formFileSm" type="file" name="uploadFile"
                          accept=".png, .jpg, .jpeg" />
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col">
                      <img style="width: 300px; display: none;" src="" class="img-thumbnail" alt="..."
                        id="img-thumbnail">
                    </div>
                  </div>
                  <div style="padding-top: 10px;">
                    <button type="submit" class="btn btn-primary" id="submit-form">Tạo mới</button>
                  </div>
                </form:form>
              </div>

        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
          crossorigin="anonymous"></script>
        <script src="/js/scripts.js"></script>
      </body>

      </main>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
      </body>

      </html>