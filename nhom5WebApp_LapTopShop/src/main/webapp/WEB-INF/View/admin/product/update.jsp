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
        <h1>Product</h1>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">Dashboard</a>
          <li class="breadcrumb-item active" aria-current="page"></li>
          <a href="#">Product</a>
          <li class="breadcrumb-item active" aria-current="page"></li>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Update product</li>
        </ol>
        <div class="container-update-product">
          <h4>Update a product</h4>
          <hr/>
          <form:form method="post" action="/admin/product/update" modelAttribute="newProduct" enctype="multipart/form-data">
            <div class="row mt-3">
              <div class="col">
                <div class="form">
                  <label for="exampleFormControlInput1" class="form-label">Name</label>
                  <form:input class="form-control form-control-sm" id="product-name" type="text"
                    aria-label=".form-control-sm example" path="name"/>
                  <span></span>
                </div>
              </div>
              <div class="col">
                <div class="form">
                  <label for="exampleFormControlInput1" class="form-label">Price</label>
                  <form:input class="form-control form-control-sm" id="product-price" type="number"
                    aria-label=".form-control-sm example" path="price"/>
                  <span></span>
                </div>
              </div>
            </div>
            <div class="row mt-3">
              <div class="mb-3">
                <label for="product-detail" class="form-label">Detail description</label>
                <form:textarea class="form-control form-control-sm" id="product-detail" rows="3" path="detailDesc"/>
                <span></span>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col">
                <div class="form">
                  <label for="exampleFormControlInput1" class="form-label">Short description</label>
                  <form:input class="form-control form-control-sm" id="product-short" type="text"
                    aria-label=".form-control-sm example" path="shortDesc"/>
                  <span></span>
                </div>
              </div>
              <div class="col">
                <div class="form">
                  <label for="exampleFormControlInput1" class="form-label">Quantity</label>
                  <form:input class="form-control form-control-sm" id="product-quantity" type="number"
                    aria-label=".form-control-sm example" path="quantity"/>
                  <span></span>
                </div>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col">
                <label for="exampleFormControlInput1" class="form-label">Factory </label>
                <form:select class="form-select form-select-sm" id="product-factory" aria-label="Small select example" path="factory">
                  <form:option disabled selected>Open this select menu</form:option>
                  <form:option value="APPLE">Apple (Macbook)</form:option>
                  <form:option value="ASUS">Asus</form:option>
                  <form:option value="LENOVO">Lenovo</form:option>
                  <form:option value="DELL">Dell</form:option>
                  <form:option value="LG">LG</form:option>
                  <form:option value="ACER">Acer</form:option>
                </form:select>
                <span></span>
              </div>
              <div class="col">
                <label for="exampleFormControlInput1" class="form-label">Target</label>
                <form:select class="form-select form-select-sm" id="product-target" aria-label="Small select example" path="target">
                  <form:option disabled selected>Open this select menu</form:option>
                  <form:option value="GAMING">Gaming</form:option>
                  <form:option value="SINHVIEN-VANPHONG">Sinh viên - Văn phòng</form:option>
                  <form:option value="THIET-KE-DO-HOA">Thiết kế đồ họa</form:option>
                  <form:option value="MONG-NHE">Mỏng nhẹ</form:option>
                  <form:option value="DOANH-NHAN">Doanh nhân</form:option>
                </form:select>
                <span></span>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col">
                <label for="formFileSm" class="form-label">Image:</label>
                <input class="form-control form-control-sm" id="formFileSm" type="file" accept=".png, .jpg, .jpeg" name="uploadFile"/>
                <span></span>
              </div>
              <div class="mt-4">
                <img style="width: 300px; display: none;" src="" id="img-thumbnail" alt="...">
              </div>
            </div>
            <div>
              <button type="submit" class="btn btn-success mt-4" id="submit-form">Create</button>
            </div>
          </form>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
  </body>

  </html>