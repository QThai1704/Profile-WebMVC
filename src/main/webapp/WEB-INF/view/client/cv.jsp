<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Chi tiết CV</title>
      <!-- THƯ VIỆN CSS -->
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
      <link rel="stylesheet" href="/css/bootstrap.css">
      <link rel="stylesheet" href="/css/reset.css">
      <link rel="stylesheet" href="/css/owl.carousel.min.css">
      <link rel="stylesheet" href="/css/owl.theme.default.min.css">
      <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
      <!-- Custom CSS -->
      <link rel="stylesheet" href="/client/css/CV.css">
    </head>

    <body>
      <!-- NAVBAR -->
      <header>
        <div class="profile-page sidebar-collapse">
          <nav class="navbar navbar-expand-lg bg-nav fixed-top navbar-transparent">
            <div class="container">
              <a class="navbar-translate" href="#">Creative CV</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navigation"
                aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navigation">
                <ul class="navbar-nav ms-auto">
                  <li class="nav-item">
                    <a class="nav-link" href="#about">Thông tin</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#skills">Kỹ năng</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#portfolio">Dự án</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#experience">Kinh nghiệm</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#achievement">Thành tích</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#contact">Liên hệ</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/">Trang chủ</a>
                  </li>
              </div>
            </div>
          </nav>
        </div>
      </header>

      <div class="page-content">
        <!-- HOME -->
        <div class="profile-page">
          <div class="overlay bg-cover">
            <div class="home bg-cover d-flex align-items-center">
              <div class="container">
                <div class="content-center">
                  <div class="profile-image">
                    <a href="#"><img src="/images/thai.jpg" alt="profile image"></a>
                  </div>
                  <h2>${user.fullName}</h2>
                  <h3 class="category">${user.candidate}</h3>
                  <a class="btn btn-success mr-2" href="#contact" data-aos="zoom-in">Liên hệ</a>
                  <a class="btn btn-success" href="#" data-aos="zoom-in">Tải CV</a>
                </div>
              </div>
            </div>
          </div>
          <div class="section">
            <div class="container">
              <div class="button-container">
                <a class="btn-default btn-lg btn-icon" href="${facebook}" title="Theo dõi tôi trên Facebook">
                  <i class="fa-brands fa-facebook-f"></i></a>
                <a class="btn-default btn-lg btn-icon" href="${github}" title="Theo dõi tôi trên Github"><i
                    class="fa-brands fa-github"></i></a>
                <a class="btn-default btn-lg btn-icon" href="${instagram}" title="Theo dõi tôi trên Instagram"><i
                    class="fa-brands fa-instagram"></i></a>
              </div>
            </div>
          </div>
        </div>

        <!-- ABOUT -->
        <section id="about">
          <div class="container">
            <div class="text-center mb-4 title">
              <h4 class="title">Mục tiêu & Thông tin</h4>
            </div>
            <div class="card" data-aos="fade-up" data-aos-offset="10">
              <div class="row">
                <div class="col-lg-6 col-md-12">
                  <div class="card-body">
                    <h4 class="mt-0 title">Mục tiêu</h4>
                    <c:forEach var="target" items="${targets}">
                      <p>${target.title}</p>
                      <p>
                      <pre class="text-start"
                        style="white-space: pre-wrap; overflow: hidden; line-height: 1.5;">${target.description}</pre>
                      </p>
                    </c:forEach>
                  </div>
                </div>
                <div class="col-lg-6 col-md-12">
                  <div class="card-body">
                    <h4 class="mt-0 title">Thông tin</h4>
                    <div class="row">
                      <div class="col-sm-4"><strong class="text-uppercase">Ngày sinh:</strong></div>
                      <div class="col-sm-8">${changeDate}</div>
                    </div>
                    <div class="row mt-3">
                      <div class="col-sm-4"><strong class="text-uppercase">Email:</strong></div>
                      <div class="col-sm-8">${user.email}</div>
                    </div>
                    <div class="row mt-3">
                      <div class="col-sm-4"><strong class="text-uppercase">Số điện thoại:</strong></div>
                      <div class="col-sm-8">${user.phoneNumber}</div>
                    </div>
                    <div class="row mt-3">
                      <div class="col-sm-4"><strong class="text-uppercase">Địa chỉ:</strong></div>
                      <div class="col-sm-8">${user.address}</div>
                    </div>
                    <div class="row mt-3">
                      <div class="col-sm-4"><strong class="text-uppercase">Ngôn ngữ sử dụng:</strong></div>
                      <div class="col-sm-8">${user.language}</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- SKILLS -->
        <section id="skills">
          <div class="container">
            <div class="text-center">
              <h4 class="mb-4 title">Kỹ năng</h4>
            </div>
            <div class="card" data-aos="fade-up" data-aos-offset="10" data-aos-anchor-placement="top-bottom">
              <div class="card-body skill-items">
                <div class="row">
                  <c:forEach var="skill" items="${skills}">
                    <script>
                      document.addEventListener("DOMContentLoaded", function () {
                        var progressBar = document.getElementById("progress-bar-${skill.id}");
                        var skillPercent = progressBar.getAttribute("data-skill-percent");
                        progressBar.style.width = skillPercent + "%";
                      });
                    </script>
                    <div class="col-md-12">
                      <div class="progress-container">
                        <span class="progress-badge">${skill.name}</span>
                        <div class="progress">
                          <div class="progress-bar" id="progress-bar-${skill.id}" data-aos="zoom-in-right"
                            data-aos-duration="2000" data-aos-easing="ease-in-out" data-skill-percent="${skill.level}">
                          </div>
                          <span class="progress-value">${skill.level}%</span>
                        </div>
                      </div>
                    </div>
                  </c:forEach>
                </div>
              </div>
            </div>
          </div>
      </div>
      </section>

      <!-- PORTFOLIO -->
      <section id="portfolio">
        <div class="container">
          <div class="row">
            <div class="col-md-6 ml-auto mr-auto">
              <div class="text-center">
                <h4 class="mb-4 title">Sản phẩm</h4>
              </div>
            </div>
          </div>
          <div class="tab-content gallery mt-5">
            <div class="tab-pane active" id="web-development">
              <div class="ml-auto mr-auto">
                <div class="row">
                  <div class="col-md-6">
                    <c:forEach var="portifolio" items="${portifolios}">
                      <div class="portfolio-image" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                        <a href="#x">
                          <figure class="effect"">
                            <img src="/images/profile/${portifolio.image}" class="img-fluid" alt="Image">
                            <figcaption>
                              <div class="content">
                                <h4>${portifolio.name}</h4>
                                <p>Web Development</p>
                              </div>
                            </figcaption>
                          </figure>
                        </a>
                      </div>
                    </c:forEach>
                    <div class="portfolio-image" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                      <a href="#x">
                        <figure class="effect">
                          <img src="/images/template-images/project-2.jpg" alt="Image" class="img-fluid">
                          <figcaption>
                            <div class="content">
                              <h4>Startup Project</h4>
                              <p>Web Development</p>
                            </div>
                          </figcaption>
                        </figure>
                      </a>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="portfolio-image" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                      <a href="#x">
                        <figure class="effect">
                          <img src="/images/template-images/project-3.jpg" alt="Image" class="img-fluid">
                          <figcaption>
                            <div class="content">
                              <h4>Food Order Project</h4>
                              <p>Web Development</p>
                            </div>
                          </figcaption>
                        </figure>
                      </a>
                    </div>
                    <div class="portfolio-image" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                      <a href="#x">
                        <figure class="effect">
                          <img src="/images/template-images/project-4.jpg" alt="Image" class="img-fluid">
                          <figcaption>
                            <div class="content">
                              <h4>Web Advertising Project</h4>
                              <p>Web Development</p>
                            </div>
                          </figcaption>
                        </figure>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- EXPERIENCE -->
      <section id="experience">
        <div class="container work-experience">
          <div class="text-center mb-4 title">
            <h4>Kinh nghiệm làm việc</h4>
          </div>
          <c:forEach var="experience" items="${experiences}">
            <div class="card">
              <div class="row">
                <div class="col-md-3 bg-success" data-aos="fade-right" data-aos-offset="50" data-aos-duration="500">
                  <div class="card-body work-experience-header">
                    <p>${experience.startDate} - ${experience.endDate}</p>
                    <h5>${experience.position}</h5>
                  </div>
                </div>
                <div class="col-md-9" data-aos="fade-left" data-aos-offset="50" data-aos-duration="500">
                  <div class="card-body">
                    <h5>${experience.company}</h5>
                    <pre class="text-start"
                    style="white-space: pre-wrap; overflow: hidden; line-height: 1.5;">${experience.description}</pre>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
      </section>
      <section id="achievement">
        <div class="container education">
          <div class="text-center mb-4 title">
            <h4>Thành tích</h4>
          </div>
          <c:forEach var="achievement" items="${achievements}">
            <div class="card">
              <div class="row">
                <div class="col-md-3 bg-success" data-aos="fade-right" data-aos-offset="50" data-aos-duration="500">
                  <div class="card-body education-header">
                    <p>${achievement.startDate} - ${achievement.endDate}</p>
                    <h5 class="text-uppercase">${achievement.type}</h5>
                  </div>
                </div>
                <div class="col-md-9" data-aos="fade-left" data-aos-offset="50" data-aos-duration="500">
                  <div class="card-body">
                    <h5>${achievement.title}</h5>
                    <p class="category">${achievement.shortDesc}</p>
                    <p>${achievement.detailDesc}</p>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
      </section>

      <!-- CONTACT -->
      <section id="contact">
        <div class="contact-information" style="background-image: url('/images/template-images/staticmap.png')">
          <div class="container">
            <div class="contact">
              <div class="row">
                <div class="col-md-9">
                  <div class="card mb-0" data-aos="zoom-in">
                    <div class="text-center title">
                      <h4>Liên hệ</h4>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="card-body">
                          <form action="#">
                            <div class="p pb-3"><strong>Liên hệ với tôi</strong></div>
                            <div class="row mb-3">
                              <div class="col">
                                <div class="input-group">
                                  <span class="input-group-addon"><i class="fa-solid fa-circle-user"></i></span>
                                  <input class="form-control" type="text" name="name" placeholder="Name"
                                    required="required" />
                                </div>
                              </div>
                            </div>
                            <div class="row mb-3">
                              <div class="col">
                                <div class="input-group">
                                  <span class="input-group-addon"><i class="fa-solid fa-file-lines"></i></span>
                                  <input class="form-control" type="text" name="subject" placeholder="Subject"
                                    required="required" />
                                </div>
                              </div>
                            </div>
                            <div class="row mb-3">
                              <div class="col">
                                <div class="input-group">
                                  <span class="input-group-addon"><i class="fa-solid fa-envelope"></i></span>
                                  <input class="form-control" type="email" name="email" placeholder="Email"
                                    required="required" />
                                </div>
                              </div>
                            </div>
                            <div class="row mb-3">
                              <div class="col">
                                <div class="form-group">
                                  <textarea class="form-control" name="message" placeholder="Your Message"
                                    required="required"></textarea>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col">
                                <button class="btn btn-success" type="submit">Gửi</button>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="card-body">
                          <p class="mb-0"><strong>Địa chỉ</strong></p>
                          <p class="pb-2">8, Nguyen Trai street, Hai Duong</p>
                          <p class="mb-0"><strong>Số điện thoại</strong></p>
                          <p class="pb-2">0343282228</p>
                          <p class="mb-0"><strong>Email</strong></p>
                          <p>quangthai170402@gmail.com</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      </div>

      <!-- FOOTER -->
      <footer class="footer">
        <div class="container text-center">
          <a href="#" class="facebook btn btn-link">
            <i class="fa-brands fa-facebook-f fa-2x"></i>
          </a>
          <a href="#" class="google btn btn-link">
            <i class="fa-brands fa-github fa-2x"></i>
          </a>
          <a href="#" class="instagram btn btn-link">
            <i class="fa-brands fa-instagram fa-2x"></i>
          </a>
        </div>
        <div class="title text-center">
          <h4>MY PROJECT</h4>
        </div>
        <div class="text-center">
          <p>&copy; Creative CV. All rights reserved.</p>
        </div>
      </footer>

      <!-- THƯ VIỆN Javascript -->
      <script src="/js/bootstrap.bundle.js"></script>
      <script src="/js/jqeuery.js"></script>
      <script src="/js/owl.carousel.min.js"></script>
      <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
      <script>
        AOS.init();
      </script>
      <script src="/client/js/CV.js"></script>
    </body>

    </html>