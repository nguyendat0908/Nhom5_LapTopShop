<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
      href="http://localhost:8080/Nhom5_LapTopShop/nhom5WebApp_LapTopShop/src/main/webapp/resources/css/styles.css"
    />
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
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">User</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">view detail user</li>
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
        <button type="button" class="btn btn-success">Back</button>
      </div>
        
      </div>
      <jsp:include page="../layout/footer.jsp" />
    </main>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
