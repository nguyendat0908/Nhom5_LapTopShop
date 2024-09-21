<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
    <link rel="stylesheet"
      href="http://localhost:8080/Nhom5_LapTopShop/nhom5WebApp_LapTopShop/src/main/webapp/resources/css/styles.css" />
    <title>Document</title>
  </head>

  <body>
    <jsp:include page="../layout/header.jsp" />
    <jsp:include page="../layout/sidebar.jsp" />
    <main class="content">
      <div class="container-fluid px-4">
        <h1>Manager Order</h1>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">Order</a>
          </li>
          <li class="breadcrumb-item" aria-current="page">Delete</li>
        </ol>
<<<<<<< HEAD
        <div class="mt-5 mx-auto" style="width: 60%">
          <h3 class="border-bottom pb-3">Update a order</h3>
          <div class="d-flex">
            <span class="fw-bold">Order id = <span>4</span></span>
            <span class="mx-5 fw-bold">Price: <span>48K</span></span>
          </div>
          <div class="mt-4">
            <form action="">
              <div class="d-flex justify-content-between">
                <div class="d-flex flex-column" style="width: 45%">
                  <label for="user">User:</label>
                  <input class="form-control mt-2" type="text" value="User" id="user" name="user" />
                </div>
                <div class="d-flex flex-column" style="width: 45%">
                  <label for="status">Status:</label>
                  <select class="form-control mt-2" name="status" id="status" style="appearance: auto">
                    <option value="PENDING">PENDING</option>
                  </select>
                </div>
              </div>
              <button type="submit" class="btn btn-warning mt-4">Update</button>
            </form>
=======
        <div class="mt-5 mx-auto">
          <h3 class="border-bottom pb-3">Delete the order with ID = <span>1</span></h3>
          <div class="bg-danger bg-opacity-25 text-danger p-3 rounded-2">
            Are you sure to delete this order?
>>>>>>> origin/order-VH
          </div>
          <a href="#" class="btn btn-danger mt-4">Comfirm</a>
        </div>
<<<<<<< HEAD
      </div>
      <!-- <jsp:include page="../layout/footer.jsp" /> -->
=======
        <!-- <jsp:include page="../layout/footer.jsp" /> -->
>>>>>>> origin/order-VH
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
  </body>

  </html>