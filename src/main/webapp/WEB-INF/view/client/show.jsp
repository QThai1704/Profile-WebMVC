<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang chủ</title>
        <!-- CSS -->
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link rel="stylesheet" href="/css/reset.css">
        <link rel="stylesheet" href="/css/owl.carousel.min.css">
        <link rel="stylesheet" href="/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="/client/css/homepage.css">
        <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
        <link rel="stylesheet" href="/css/aos.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
        <script src="/js/aos.js"></script>
    </head>

    <body>
        <!-- Header and Navbar -->
        <header id="header">
            <nav class="navbar navbar-expand-lg navbar-light sticky-top">
                <div class="container justify-content-between">
                    <a class="navbar-brand logo" href="#">
                        CREATIVE
                        <span>CV</span>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#home">Trang chủ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#member">Thành viên</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#contact">Liên hệ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#about">Về chúng tôi</a>
                            </li>
                        </ul>
                        <a href="/login" class="btn btn-brand ms-lg-3 ">Đăng nhập</a>
                    </div>
                </div>
            </nav>
        </header>
        <!-- End Header and Navbar -->

        <!-- Slider -->
        <section id="home">
            <div id="carouselExampleDark" class="carousel carousel-dark slide slide-hero" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner justify-content-between">
                    <div class="carousel-item active" data-bs-interval="3000">
                        <img src="/images/picture4.jpg" class="d-block w-100 h-100 img-slider" alt="...">
                        <div class="carousel-caption d-block">
                            <p class="h1 text-uppercase">Chào mừng đến với dự án của tôi</p>
                        </div>
                    </div>
                    <div class="carousel-item" data-bs-interval="3000">
                        <img src="/images/picture5.jpg" class="d-block w-100 h-100 img-slider" alt="...">
                        <div class="carousel-caption d-block">
                            <p class="h1 text-uppercase">Welcome to Project_N9</p>
                        </div>
                    </div>
                    <div class="carousel-item" data-bs-interval="3000">
                        <img src="/images/picture6.jpg" class="d-block w-100 h-100 img-slider" alt="...">
                        <div class="carousel-caption d-block">
                            <p class="h1 text-uppercase">Welcome to Project_N9</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon text-light" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon text-light" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </section>
        <!-- End Slider -->

        <!-- Member -->
        <section id="member" class="mt-5">
            <div class="container">
                <div class="row ">
                    <h1 class="h3 member-header text-dark my-3">Các thành viên</h1>
                </div>
                <div class="row justify-content-around py-2">
                    <div class="col-lg-3 my-2 ">
                        <div class="contact-input bg-light page--CV" data-aos="flip-left" data-aos-duration="600"
                            data-aos-delay="300" data-aos-easing=ease-in-out>
                            <a class="member-link" href="/detail_cv">
                                <div class="member-piece">
                                    <h4 class="text-center py-3">
                                        <i class="ti-pin icon--pin text-primary"></i>
                                    </h4>
                                    <p class="text-center">Nguyễn Đăng Phương</p>
                                    <p class="text-center my-2">Fresher Web Developer</p>
                                    <div class="image">
                                        <img src="/images/phuong2.jpg" alt="Placeholder"
                                            class="img-member py-3 text-center image-cv" />
                                        <div class="overlay"></div>
                                        <div class="social-links">
                                            <a class="text-light" href="/detail_cv"><i class='ti-eye h3'></i><br>
                                                Access CV</a>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 my-2 ">
                        <div class="contact-input bg-light page--CV" data-aos="flip-left" data-aos-duration="600"
                            data-aos-delay="300" data-aos-easing=ease-in-out>
                            <a class="member-link" href="/detail_cv">
                                <div class="member-piece">
                                    <h4 class="text-center py-3">
                                        <i class="ti-pin icon--pin text-warning"></i>
                                    </h4>
                                    <p class="text-center my-2">Nguyễn Văn Hiếu</p>
                                    <p class="text-center">An ninh mạng</p>
                                    <div class="image">
                                        <img src="/images/hieu3.jpg" alt="Placeholder"
                                            class="img-member py-3 text-center image-cv" />
                                        <div class="overlay"></div>
                                        <div class="social-links">
                                            <a class="text-light" href="/detail_cv"><i class='ti-eye h3'></i><br>Access
                                                CV</a>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 my-2">
                        <div class="contact-input bg-light page--CV " data-aos="flip-left" data-aos-duration="600"
                            data-aos-delay="300" data-aos-easing=ease-in-out>
                            <a class="member-link" href="/detail_cv">
                                <div class="member-piece">
                                    <h4 class="text-center py-3">
                                        <i class="ti-pin icon--pin text-success"></i>
                                    </h4>
                                    <p class="text-center my-2">Nguyễn Quang Thái</p>
                                    <p class="text-center">Java Developer</p>
                                    <div class="image">
                                        <img src="/images/thai2.jpg" alt="Placeholder"
                                            class="img-member py-3 text-center image-cv" />
                                        <div class="overlay"></div>
                                        <div class="social-links">
                                            <a class="text-light" href="#"><i class='ti-eye h3'></i><br>Access
                                                CV</a>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- End Member -->

        <!-- Contact -->
        <section id="contact" class="mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="row my-3">
                            <h1 class="h3 member-header text-dark ">Liên hệ</h1>
                        </div>
                        <div class="row text-dark">
                            <p class="h5 mb-2">Số điện thoại:</p>
                            <p class="contact-member my-1">
                                <i class="ti-mobile"> </i>
                                <a href="#" class="numberphone">0329603280</a>
                                <span>- Nguyễn Đăng Phương</span>
                            </p>
                            <p class="contact-member my-1">
                                <i class="ti-mobile"> </i>
                                <a href="#" class="numberphone">0343282228</a>
                                <span>- Nguyễn Quang Thái</span>
                            </p>
                            <p class="contact-member my-1">
                                <i class="ti-mobile"> </i>
                                <a href="#" class="numberphone">0973513198</a>
                                <span>- Nguyễn Văn Hiếu</span>
                            </p>
                        </div>
                        <div class="row text-dark mt-5">
                            <p>
                                <i class="ti-pencil-alt2"> </i>
                                Hãy liên hệ ngay với chúng tôi khi bạn có nhu cầu. Chúng tôi luôn đồng hành cùng bạn
                                trên mọi chặng đường tương lai. Cảm ơn bạn và chúc một ngày tốt lành.
                            </p>
                        </div>

                    </div>
                    <div class="col-md-5">
                        <h1 class="h3 member-header text-dark my-3">Đối tác</h1>
                        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0"
                                    class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                                    aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                                    aria-label="Slide 3"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3"
                                    aria-label="Slide 4"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4"
                                    aria-label="Slide 5"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active" data-bs-interval="2000">
                                    <a href="http://www.tlu.edu.vn/"></a>
                                    <img src="/images/ThuyLoiUni.jpg" class="d-block w-100 partner-img"
                                        alt="Đại học Thủy Lợi">
                                </div>
                                <div class="carousel-item" data-bs-interval="2000">
                                    <a href="https://www.hust.edu.vn/"></a>
                                    <img src="/images/BachKhoaUni.jpg" class="d-block w-100 partner-img"
                                        alt="Đại học Bách Khoa">
                                </div>
                                <div class="carousel-item" data-bs-interval="2000">
                                    <a href="https://portal.ptit.edu.vn/"></a>
                                    <img src="/images/PTITUni.jpg" class="d-block w-100 partner-img"
                                        alt="Học viện Bưu Chính Viễn Thông">
                                </div>
                                <div class="carousel-item" data-bs-interval="2000">
                                    <a href="https://www.vnu.edu.vn/"></a>
                                    <img src="/images/QuocGiaUni.jpeg" class="d-block w-100 partner-img"
                                        alt="Đại học Quốc Gia Hà Nội">
                                </div>
                                <div class="carousel-item" data-bs-interval="2000">
                                    <a href="http://www.ftu.edu.vn/"></a>
                                    <img src="/images/NgoaiThuongUni.jpg" class="d-block w-100 partner-img"
                                        alt="Đại học Ngoại Thương">
                                </div>
                            </div>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Contact -->

        <!-- About -->
        <section id="about" class="mt-5">
            <div class="container">
                <div class="row ">
                    <h1 class="h3 member-header text-dark my-3">Về chúng tôi</h1>
                </div>
                <div class="row justify-content-between py-2 text-dark text-center">
                    <div class="col-md-4 ">
                        <div class="row about-image text-center">
                            <img src="/images/phuong.jpg" alt="Đăng Phương" class="about-image--item">
                        </div>
                        <p class="mt-1 mb-2 h5 text-center">Nguyễn Đăng Phương</p>
                        <div class="row para">
                            <p>Công việc: Sinh viên</p>
                            <p class="my-2">Địa điểm làm việc: Trường Đại học Thủy Lợi</p>
                        </div>
                    </div>
                    <div class="col-md-4 mt-2">
                        <div class="row about-image text-center">
                            <img src="/images/hieu.jpg" alt="Văn Hiếu" class="about-image--item">
                        </div>
                        <p class="mt-1 mb-2 h5 text-center">Nguyễn Văn Hiếu</p>
                        <div class="row para">
                            <p>Công việc: Sinh viên</p>
                            <p class="my-2">Địa điểm làm việc: Trường Đại học Thủy Lợi</p>
                        </div>
                    </div>
                    <div class="col-md-4 mt-2">
                        <div class="row about-image text-center">
                            <img src="/images/thai.jpg" alt="Quang Thái" class="about-image--item">
                        </div>
                        <p class="mt-1 mb-2 h5 text-center">Nguyễn Quang Thái</p>
                        <div class="row para">
                            <p>Công việc: Sinh viên</p>
                            <p class="my-2">Địa điểm làm việc: Trường Đại học Thủy Lợi</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End About -->
        <!-- Footer -->
        <footer id="footer" class="mt-5">
            <div class="container mt-3 text-light">
                <div class="row border-bottom border-secondary border-2 justify-content-between">
                    <div class="col-lg-5 location">
                        <p class="h4 border-bottom border-secondary pt-3">Cơ sở Hà Nội</p>
                        <p class="mt-3"><i class="ti-location-pin"></i> Địa chỉ: Số 175 Tây Sơn, quận Đống Đa, TP
                            Hà Nội</p>
                        <p class="mt-3"><i class="ti-mobile"></i> Số điện thoại: <a
                                class="text-light footer-numberphone" href="#">0343282228</a>
                        </p>
                        <p class="mt-3"><i class="ti-email"></i> Email: quangthai170402@gmail.com</p>
                    </div>
                    <div class="col-lg-5 location">
                        <p class="h4 border-bottom border-secondary pt-3">Cơ sở Hồ Chí Minh</p>
                        <p class="mt-3"><i class="ti-location-pin"></i> Địa chỉ: Số 2 Trường Sa, phường 17 , quận Bình
                            Thạnh, TP HCM</p>
                        <p class="mt-3"><i class="ti-mobile"></i> Numberphone: <a class="text-light footer-numberphone"
                                href="#">0343282228</a>
                        </p>
                        <p class="mt-3"><i class="ti-email"></i> Email: quangthai170402@gmail.com</p>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col text-center footer-icon">
                        <i class="ti-facebook pe-2"></i>
                        <i class="ti-twitter-alt border-end border-start border-3 px-2"></i>
                        <i class="ti-youtube ps-2"></i>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->
        <!--JavaScript -->
        <script>
            AOS.init({

            }); // Thư viện animation
        </script>
        <script src="/js/bootstrap.bundle.js"></script>
        <script src="/js/jqeuery.js"></script>
        <script src="/js/owl.carousel.min.js"></script>
        <script src="/client/js/homepage.js"></script>
    </body>

    </html>