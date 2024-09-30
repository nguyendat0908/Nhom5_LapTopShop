<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css">
        <link rel="stylesheet"
            href="http://localhost:8080/Nhom5_LapTopShop/nhom5WebApp_LapTopShop/src/main/webapp/resources/client/css/style.css" />
        <title>Document</title>
        <style>
            .container-client-product{
                margin: 40px;
            }
            .client-product{
                
                display: flex;
            }  
            .form-filter{
                display: flex;
                flex-wrap: wrap;
                
            }
            .client-product-filtering{
                width: 40%;
                
            }
            .form-check{
                margin-right: 10px;
            }                   
            .client-product-content{
               width: 60%;
               display: flex;
            }
        </style>
    </head>

    <body>
        <jsp:include page="../layout/header.jsp" />
        <div class="container-client-product">
            <div>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">
                        <a href="">Home</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Danh sách sản</li>
                </ol>
            </div>  
            <div class="client-product">
                        
                <div class="client-product-filtering">
                    <div>
                        <p>Hãng sản xuất</p>
                        <div class="form-filter">                       
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Apple
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                ASUS
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                LENOVO
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                DELL
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                LG
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                ACER
                                </label>
                            </div>
                        </div>
                    </div>
                    <div>
                        <p>Mục đích sử dụng</p>
                        <div class="form-filter">                       
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Gamming
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Sinh viên-Văn phòng
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Thiết kế đồ họa
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Mỏng nhẹ
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Doanh nhân
                                </label>
                            </div>

                        </div>
                    </div>
                    <div>
                        <p>Mức giá</p>
                        <div class="form-filter">                       
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Dưới 10 Triệu
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Từ 10-15 Triệu
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Từ 15-20 Triệu
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Trên 20 triệu
                                </label>
                            </div>                        
                        </div>
                    </div>
                    <div>
                        <p>Sắp xếp</p>
                        <div class="form-filter">                       
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Giá tăng dần
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Giá giảm dần
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                Không
                                </label>
                            </div>                       
                        </div>
                    </div>
                    <button type="button" class="btn btn-outline-success">Lọc Sản Phẩm</button>
                </div>
                <div class="client-product-content">
                    <P>NHULON</P>

                </div>                         
            </div>
        </div>
        
            
                             
        <jsp:include page="../layout/footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    </body>

    </html>