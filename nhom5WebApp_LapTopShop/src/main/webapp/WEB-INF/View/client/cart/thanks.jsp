<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css">
        <link rel="stylesheet" href="../../../../resources/client/css/style.css" />
        <title>Document</title>
    </head>

    <body>
        <jsp:include page="../layout/header.jsp" />

        <div class="container-fluid mt-5">
            <div class="content">

                <div class="bg-success bg-opacity-25 p-4 rounded-3 border border-success-subtle">Cảm ơn bạn đã đặt
                    hàng, đơn hàng đã được xác nhận
                    thành công!
                </div>
            </div>
        </div>
        <jsp:include page="../layout/feature.jsp" />
        <jsp:include page="../layout/footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    </body>

    </html>