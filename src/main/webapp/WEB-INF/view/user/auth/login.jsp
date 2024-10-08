<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Đăng nhập</title>
                <!-- CSS -->
                <link rel="stylesheet" href="/css/bootstrap.css">
                <link rel="stylesheet" href="/css/reset.css">
                <link rel="stylesheet" href="/css/owl.carousel.min.css">
                <link rel="stylesheet" href="/css/owl.theme.default.min.css">
                <link rel="stylesheet" href="/user/css/login.css">
                <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
                <link rel="stylesheet" href="/css/aos.css">
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
                <script src="/js/aos.js"></script>
            </head>

            <body>
                <div id="login">
                    <div class="container-fluid">
                        <div class="row login-main border text-center">
                            <div class="col-sm-4 login-title">
                                <h1 class="h1">Creative CV</h1>
                                <h3 class="h3" id="paragraph">Đăng nhập tài khoản người dùng</h3>
                            </div>
                            <div class="col-sm-8" id="login-contact">
                                <div class="col-md">
                                    <h1 class="h1">Đăng nhập</h1>
                                    <div class="col col-image">
                                        <img src="/images/admin.jpg"></img>
                                    </div>
                                </div>
                                <form action="/login" method="post">
                                    <div class="col-md login-information">
                                        <div class="input-group flex-nowrap input-group-lg mt-3 col-md">
                                            <span class="input-group-text" id="addon-wrapping"><i
                                                    class="ti-user"></i></span>
                                            <input type="text" class="form-control" id="userName" placeholder="Email"
                                                aria-label="Username" aria-describedby="addon-wrapping" name="username"
                                                path="email" />
                                        </div>
                                    </div>
                                    <div class="col-md login-information">
                                        <div class="input-group flex-nowrap input-group-lg col-md">
                                            <span class="input-group-text" id="addon-wrapping"><i
                                                    class="ti-unlock"></i></span>
                                            <input type="password" id="passWord" class="form-control"
                                                placeholder="Mật khẩu" aria-label="Password"
                                                aria-describedby="addon-wrapping" name="password" />
                                            <br>
                                        </div>
                                        <p id="note-pass" class="text-lg-start my-1"></p>
                                    </div>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <div class="col-md">
                                        <div class="row d-flex justify-content-between">
                                            <a class="h5 col-auto" id="login-forgot" href="#">Quên mật khẩu<br></a>
                                            <a class="h5 col-auto" id="login-forgot" href="/register">Tạo tài
                                                khoản<br></a>
                                        </div>
                                        <button type="submit" id="login-login" class="btn btn-lg my-3">Đăng
                                            nhập</button>
                                    </div>
                                </form>
                            </div>
                            <div class="col-sm-8" id="login-password">
                                <div class="col-md">
                                    <h1 class="h1">Nhập email</h1>
                                </div>
                                <div class="col-md">
                                    <div class="input-group flex-nowrap input-group-lg mt-3 col-md">
                                        <span class="input-group-text" id="addon-wrapping"><i
                                                class="ti-email"></i></span>
                                        <input type="email" id="login-email" class="form-control" placeholder="email"
                                            aria-label="email" aria-describedby="addon-wrapping">
                                    </div>
                                    <p id="note-email" class="text-start"></p>
                                </div>
                                <div class="col-md">
                                    <a href="#" class="btn btn-primary btn-lg my-3" id="login-submit">Submit</a>
                                    <a href="/login" class="btn btn-primary btn-lg my-3 " id="login-back">Back to
                                        login</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- JS -->
                <script src="/js/bootstrap.bundle.js"></script>
                <script src="/js/jqeuery.js"></script>
                <script src="/js/owl.carousel.min.js"></script>
                <script src="/user/js/auth/login.js"></script>
            </body>

            </html>