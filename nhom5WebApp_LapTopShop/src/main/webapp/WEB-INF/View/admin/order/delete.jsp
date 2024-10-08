<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/styles.css">
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
        <div class="mt-5 mx-auto">
          <h3 class="border-bottom pb-3">Delete the order with ID = <span>1</span></h3>
          <div class="bg-danger bg-opacity-25 text-danger p-3 rounded-2">
            Are you sure to delete this order?
          </div>
          <a href="#" class="btn btn-danger mt-4">Confirm</a>
        </div>
        <!-- <jsp:include page="../layout/footer.jsp" /> -->
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
  </body>

  </html>