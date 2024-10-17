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

    </head>

    <body style="background-color: rgb(67, 112, 233);">
        <div class="register-form">
            <h3 style="text-align: center;">Resister</h3>

            <form>
                <div style="margin-bottom:20px;" class="row">
                    <div class="col">
                        <label for="exampleFormControlInput1" class="form-label">First name</label>
                        <input class="form-control" type="text" placeholder="" aria-label="default input example">
                    </div>
                    <div class="col">
                        <label for="exampleFormControlInput1" class="form-label">Fast Name</label>
                        <input class="form-control" type="text" placeholder="" aria-label="default input example">
                    </div>
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="row">
                    <div class="col">
                        <label for="exampleFormControlInput1" class="form-label">Password</label>
                        <input class="form-control" type="text" placeholder="" aria-label="default input example">
                    </div>
                    <div class="col">
                        <label for="exampleFormControlInput1" class="form-label">Confirm Password</label>
                        <input class="form-control" type="text" placeholder="" aria-label="default input example">
                    </div>
                </div>

                <button style="width: 780px;margin-top:20px" type="submit" class="btn btn-primary">Create
                    Account</button>
            </form>
            <p style="padding-top: 20px;"><a href="#" class="link-underline-primary">Have an account? Login!</a></p>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    </body>

    </html>