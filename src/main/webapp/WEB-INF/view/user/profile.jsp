<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profiles</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/user/css/admin.css">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
  </head>

  <body>
    <jsp:include page="./layout/header.jsp" />

    <div class="profile">
      <div class="container mb-4">
        <div class="row">
          <div class="col-md-4">
            <div class="card">
              <img src="/images/muc-tieu.jpg" class="card-img-top" width="400px">
              <div class="card-body">
                <h5 class="card-title">Mục tiêu</h5>
                <div class="text-center">
                  <a href="/user/profile/target" class="btn btn-outline-success">Xem</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card">
              <img src="/images/sokiu.jpeg" class="card-img-top">
              <div class="card-body">
                <h5 class="card-title">Kỹ năng</h5>
                <div class="text-center">
                  <a href="/user/profile/skill" class="btn btn-outline-success">Xem</a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="card">
              <img src="/images/17-31.jpg" class="card-img-top">
              <div class="card-body">
                <h5 class="card-title">Dự án</h5>
                <div class="text-center">
                  <a href="/user/profile/portifolio" class="btn btn-outline-success">Xem</a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="card">
              <img src="/images/exp.jpeg" class="card-img-top">
              <div class="card-body">
                <h5 class="card-title">Kinh nghiệm</h5>
                <div class="text-center">
                  <a href="/user/profile/experience" class="btn btn-outline-success">Xem</a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="card">
              <img src="/images/achievement.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Thành tích</h5>
                <div class="text-center">
                  <a href="/user/profile/achievement" class="btn btn-outline-success">Xem</a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="card">
              <img src="/images/society.jpg" class="card-img-top">
              <div class="card-body">
                <h5 class="card-title">Mạng xã hội</h5>
                <div class="text-center">
                  <a href="/user/profile/society" class="btn btn-outline-success">Xem</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page="./layout/footer.jsp" />

    <script src="/user/js/admin.js"></script>
    <script src="/js/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  </body>

  </html>