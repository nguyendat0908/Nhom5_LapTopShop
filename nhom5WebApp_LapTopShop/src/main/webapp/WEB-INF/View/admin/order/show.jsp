<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
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
    <title>Danh sách đơn hàng - Quản trị viên</title>
  </head>

  <body>
    <jsp:include page="../layout/header.jsp" />
    <jsp:include page="../layout/sidebar.jsp" />
    <main class="content">
      <div class="container-fluid px-4">
        <h1>Quản lý đơn hàng</h1>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Order</li>
        </ol>
        <div class="mt-5">
          <table class="table table-bordered align-middle text-center">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col">Total Price</th>
                <th scope="col">User</th>
                <th scope="col">Status</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>0 đ</td>
                <td>Normal User</td>
                <td></td>
                <td>
                  <a href="#" class="btn btn-success mx-1">View</a>
                  <a href="#" class="btn btn-warning mx-1">Update</a>
                  <a href="#" class="btn btn-danger mx-1">Delete</a>
                </td>
              </tr>

              <tr>
                <th scope="row">1</th>
                <td>0 đ</td>
                <td>Normal User</td>
                <td></td>
                <td>
                  <a href="#" class="btn btn-success mx-1">View</a>
                  <a href="#" class="btn btn-warning mx-1">Update</a>
                  <a href="#" class="btn btn-danger mx-1">Delete</a>
                </td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>0 đ</td>
                <td>Normal User</td>
                <td></td>
                <td>
                  <a href="#" class="btn btn-success mx-1">View</a>
                  <a href="#" class="btn btn-warning mx-1">Update</a>
                  <a href="#" class="btn btn-danger mx-1">Delete</a>
                </td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>0 đ</td>
                <td>Normal User</td>
                <td></td>
                <td>
                  <a href="#" class="btn btn-success mx-1">View</a>
                  <a href="#" class="btn btn-warning mx-1">Update</a>
                  <a href="#" class="btn btn-danger mx-1">Delete</a>
                </td>
              </tr>

              <tr>
                <th scope="row">1</th>
                <td>0 đ</td>
                <td>Normal User</td>
                <td></td>
                <td>
                  <a href="#" class="btn btn-success mx-1">View</a>
                  <a href="#" class="btn btn-warning mx-1">Update</a>
                  <a href="#" class="btn btn-danger mx-1">Delete</a>
                </td>
              </tr>
            </tbody>
          </table>
          <nav aria-label="Page navigation example">
            <ul class="pagination mt-5 pst-pagination">
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
      <!-- <jsp:include page="../layout/footer.jsp" /> -->
    </main>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
