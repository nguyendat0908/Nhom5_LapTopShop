<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <h1>User</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item active" aria-current="page">
                <a href="#">Dashboard</a>
              <li class="breadcrumb-item active" aria-current="page"></li>
              <a href="#">User</a>
              <li class="breadcrumb-item active" aria-current="page"></li>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Create user</li>
            </ol>
            <div class="container-create-user">

              <div class="container-view-user">
                <div class="h4 pb-2 mb-2 border-bottom ">
                  Create a user
                </div>
                <form:form method="post" action="/admin/user/create" modelAttribute="newUser">
                  <div class="row">
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Email</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="email" />
                      </div>
                    </div>
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Password</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="password" />
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Phone number</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="phone" />
                      </div>
                    </div>
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Full name</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="fullName" />
                      </div>
                    </div>

                  </div>
                  <div class="row">
                    <div class="col">
                      <div class="form">
                        <label for="exampleFormControlInput1" class="form-label">Address</label>
                        <form:input class="form-control form-control-sm" type="text" placeholder=""
                          aria-label=".form-control-sm example" path="address" />
                      </div>
                    </div>
                  </div>
                  <div style="padding-bottom: 10px;" class="row">
                    <div class="col">
                      <label for="exampleFormControlInput1" class="form-label">Role: </label>
                      <select class="form-select form-select-sm" aria-label="Small select example">
                        <option selected>Open this select menu</option>
                        <option value="ADMIN">ADMIN</option>
                        <option value="USER">USER</option>
                      </select>
                    </div>
                    <div class="col">
                      <div class="col-12">
                        <label for="formFileSm" class="form-label">Avatar</label>
                        <input class="form-control form-control-sm" id="formFileSm" type="file" />

                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col">
                      <img style="width: 300px" src="https://deviet.vn/wp-content/uploads/2019/04/vuong-quoc-anh.jpg"
                        class="img-thumbnail" alt="...">
                    </div>
                  </div>
                  <div style="padding-top: 10px;">
                    <button type="submit" class="btn btn-primary">Create</button>
                  </div>
              </div>
              </form:form>


        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
          crossorigin="anonymous"></script>
      </body>

      </html>