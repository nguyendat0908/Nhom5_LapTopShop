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
        <h1>Product</h1>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Product</li>
        </ol>
        <div class="container-create-product">
            <h4>Create a product</h4>
            <div class="row">
                <div class="col">
                    <div class="form">                     
                        <label for="exampleFormControlInput1" class="form-label">Email address</label>
                        <input class="form-control form-control-sm" type="text" placeholder="" aria-label=".form-control-sm example">                                  
                    </div>
                </div>
                <div class="col">                   
                      <div class="form">                       
                          <label for="exampleFormControlInput1" class="form-label">Email address</label>
                          <input class="form-control form-control-sm" type="text" placeholder="" aria-label=".form-control-sm example">                                                                                          
                      </div>
                </div>
            </div>
            <div class="row">
              <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Example textarea</label>
                <textarea class="form-control form-control-sm" id="exampleFormControlTextarea1" rows="3"></textarea> 
              </div>                                           
            </div>
            <div class="row">
              <div class="col">
                  <div class="form">                    
                      <label for="exampleFormControlInput1" class="form-label">Email address</label>
                      <input class="form-control form-control-sm" type="text" placeholder="" aria-label=".form-control-sm example">                                  
                  </div>
              </div>
              <div class="col">                   
                    <div class="form">                     
                        <label for="exampleFormControlInput1" class="form-label">Email address</label>
                        <input class="form-control form-control-sm" type="text" placeholder="" aria-label=".form-control-sm example">                                                                                        
                    </div>
              </div>
          </div>
          <div class="row">
            <div class="col">
              <label for="exampleFormControlInput1" class="form-label">Email address</label>
              <select class="form-select form-select-sm" aria-label="Small select example">
                <option selected>Open this select menu</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </div>
            <div class="col">
              <label for="exampleFormControlInput1" class="form-label">Email address</label>
              <select class="form-select form-select-sm" aria-label="Small select example">
                <option selected>Open this select menu</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </div>           
            </div>
            <div class="row">
              <div class="col">                
                  <label for="formFileSm" class="form-label">Small file input example</label>
                  <input class="form-control form-control-sm" id="formFileSm" type="file">                
              </div>
              <div class="col">
                <img src="" class="img-fluid" alt="...">

              </div>
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
