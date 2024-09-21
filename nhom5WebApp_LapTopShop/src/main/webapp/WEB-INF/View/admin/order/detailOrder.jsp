<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css">
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
                    <li class="breadcrumb-item active" aria-current="page"><a href="#">Order</a></li>
                    <li class="breadcrumb-item" aria-current="page">View Detail</li>
                </ol>
                <h4 class="m-0">Order Detail with ID = <span>1</span></h4>
                <div class="mt-2">
                    <table class="table table-bordered align-middle text-center">
                        <thead>
                            <tr>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Tên</th>
                                <th scope="col">Giá cả</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Thành tiền</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><img src="https://laptop88.vn/media/news/2910_hinhanhmaytinhxachtay.jpg"
                                        class="img-order rounded-circle" alt=""></td>
                                <td>
                                    <a href="#">Laptop Asus TUF Gaming</a>
                                </td>
                                <td>17,000,000 <span>đ</span></td>
                                <td>3</td>
                                <td>
                                    52,000,000 <span>đ</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="https://laptop88.vn/media/news/2910_hinhanhmaytinhxachtay.jpg"
                                        class="img-order rounded-circle" alt=""></td>
                                <td>
                                    <a href="#">Laptop Asus TUF Gaming</a>
                                </td>
                                <td>17,000,000 <span>đ</span></td>
                                <td>3</td>
                                <td>
                                    52,000,000 <span>đ</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="https://laptop88.vn/media/news/2910_hinhanhmaytinhxachtay.jpg"
                                        class="img-order rounded-circle" alt=""></td>
                                <td>
                                    <a href="#">Laptop Asus TUF Gaming</a>
                                </td>
                                <td>17,000,000 <span>đ</span></td>
                                <td>3</td>
                                <td>
                                    52,000,000 <span>đ</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="https://laptop88.vn/media/news/2910_hinhanhmaytinhxachtay.jpg"
                                        class="img-order rounded-circle" alt=""></td>
                                <td>
                                    <a href="#">Laptop Asus TUF Gaming</a>
                                </td>
                                <td>17,000,000 <span>đ</span></td>
                                <td>3</td>
                                <td>
                                    52,000,000 <span>đ</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="https://laptop88.vn/media/news/2910_hinhanhmaytinhxachtay.jpg"
                                        class="img-order rounded-circle" alt=""></td>
                                <td>
                                    <a href="#">Laptop Asus TUF Gaming</a>
                                </td>
                                <td>17,000,000 <span>đ</span></td>
                                <td>3</td>
                                <td>
                                    52,000,000 <span>đ</span>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                    <!-- <nav aria-label="Page navigation example">
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
                    </nav> -->
                    <a href="#" class="btn btn-success">Back</a>
                </div>
            </div>
            <!-- <jsp:include page="../layout/footer.jsp" /> -->
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    </body>

    </html>