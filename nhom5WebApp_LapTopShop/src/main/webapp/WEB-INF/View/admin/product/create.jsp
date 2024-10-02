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
          </li>
          <li class="breadcrumb-item active" aria-current="page">Product</li>
        </ol>
        <div class="container-create-product">
          <h4>Create a product</h4>
          <form action="">
            <div class="row mt-3">
              <div class="col">
                <div class="form">
                  <label for="exampleFormControlInput1" class="form-label">Name</label>
                  <input class="form-control form-control-sm" id="product-name" type="text" placeholder=""
                    aria-label=".form-control-sm example">
                  <span></span>
                </div>
              </div>
              <div class="col">
                <div class="form">
                  <label for="exampleFormControlInput1" class="form-label">Price</label>
                  <input class="form-control form-control-sm" id="product-price" type="number" placeholder=""
                    aria-label=".form-control-sm example">
                  <span></span>
                </div>
              </div>
            </div>
            <div class="row mt-3">
              <div class="mb-3">
                <label for="product-detail" class="form-label">Detail descreption</label>
                <textarea class="form-control form-control-sm" id="product-detail" rows="3"></textarea>
                <span></span>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col">
                <div class="form">
                  <label for="exampleFormControlInput1" class="form-label">Short description</label>
                  <input class="form-control form-control-sm" id="product-short" type="text" placeholder=""
                    aria-label=".form-control-sm example">
                  <span></span>
                </div>
              </div>
              <div class="col">
                <div class="form">
                  <label for="exampleFormControlInput1" class="form-label">Quantity</label>
                  <input class="form-control form-control-sm" id="product-quantity" type="number" placeholder=""
                    aria-label=".form-control-sm example">
                  <span></span>
                </div>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col">
                <label for="exampleFormControlInput1" class="form-label">Factory </label>
                <select class="form-select form-select-sm" id="product-factory" aria-label="Small select example">
                  <option disabled selected>Open this select menu</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
                <span></span>
              </div>
              <div class="col">
                <label for="exampleFormControlInput1" class="form-label">Target</label>
                <select class="form-select form-select-sm" id="product-target" aria-label="Small select example">
                  <option disabled selected>Open this select menu</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
                <span></span>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col">
                <label for="formFileSm" class="form-label">Image</label>
                <input class="form-control form-control-sm" id="formFileSm" type="file">
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
    <script src="../../../../resources/js/scripts.js"></script>
    <script src="../../../../resources/js/validate.js"></script>
  </body>

  </html>