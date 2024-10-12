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
        <h1>User</h1>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">Dashboard</a>
          <li class="breadcrumb-item active" aria-current="page"></li>
          <a href="#">User</a>
          <li class="breadcrumb-item active" aria-current="page"></li>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Create User</li>
        </ol>
        <div class="container-update-user">
          <div class="h4 pb-2 mb-2 border-bottom ">
            Update a user
          </div>

          <form:form method="post" action="/admin/user/update" modelAttribute="newUser">

            <div class="row">
              <div class="form">
                <label for="exampleInputEmail1" class="form-label">Email</label>
                <form:input type="email" class="form-control form-control-sm" id="exampleInputEmail1"
                  aria-describedby="emailHelp" path="email" />
              </div>
            </div>
            <!-- <div class="row"> -->
            <div class="form">
              <label for="exampleFormControlInput1" class="form-label">Phone Number</label>
              <form:input class="form-control form-control-sm" type="text" placeholder=""
                aria-label=".form-control-sm example" path="phone" />
              <!-- </div> -->
            </div>
            <!-- <div class="row"> -->
            <div class="form">
              <label for="exampleFormControlInput1" class="form-label">Full name</label>
              <form:input class="form-control form-control-sm" type="text" placeholder=""
                aria-label=".form-control-sm example" path="fullName" />
              <!-- </div> -->
            </div>
            <!-- <div class="row"> -->
            <div class="form">
              <label for="exampleFormControlInput1" class="form-label">Adress</label>
              <form:input class="form-control form-control-sm" type="text" placeholder=""
                aria-label=".form-control-sm example" path="address" />
              <!-- </div> -->
            </div>
            <div style="padding-top: 20px;">
              <button type="submit" class="btn btn-warning">Update</button>
            </div>
        </div>


        </form:form>

      </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
  </body>

  </html>