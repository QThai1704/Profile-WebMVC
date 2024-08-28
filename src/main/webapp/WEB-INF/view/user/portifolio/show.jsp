<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dự án</title>
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
        <link rel="stylesheet" href="/css/reset.css">
        <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
        <link rel="stylesheet" href="/user/css/admin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
          $(document).ready(() => {
            const avatarFile = $("#avatarFile");
            avatarFile.change(function (e) {
              const imgURL = URL.createObjectURL(e.target.files[0]);
              console.log("Image URL:", imgURL);
              $("#avatarPreview").attr("src", imgURL);
              $("#avatarPreview").css({ "display": "block" });
            });
          });
        </script>
      </head>

      <body>
        <jsp:include page="../layout/header.jsp" />
        <div class="image">
          <img src="/images/Hinh-Anime-Thien-Nhien-Dep-Cute-Nhat.jpg" alt="">
        </div>

        <div class="container">
          <div class="row">
            <div class="col text-center">
              <button type="button" class="btn btn-outline-success btn-add" data-toggle="modal" data-target="#myModal">
                Thêm dự án
              </button>
            </div>
          </div>
        </div>
        <form:form class="modal" id="myModal" action="/user/profile/portifolio/create" method="POST"
          enctype="multipart/form-data" modelAttribute="newPortifolio">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Thêm dự án cá nhân</h4>
              </div>
              <div class="modal-body">
                <div class="mb-3">
                  <label class="form-label">Tên dự án:</label>
                  <form:input type="text" class="form-control" path="name" />
                </div>
                <div class="mb-3">
                  <label class="form-label">Github:</label>
                  <form:input type="text" class="form-control" placeholder="Đường dẫn tới Github" path="github" />
                </div>
                <div class="mb-3">
                  <label class="form-label">Đường dẫn:</label>
                  <form:input type="text" class="form-control" placeholder="Đường dẫn tới website (nếu có)"
                    path="website" />
                </div>
                <div class="mb-3">
                  <label class="form-label">Mô tả dự án:</label>
                  <form:textarea class="form-control" rows="10" data-bs-spy="scroll" path="detailDesc"></form:textarea>
                </div>
                <div class="mb-3 col-md-6 col-12">
                  <label for="avatarFile" class="form-label">Hình ảnh dự án:</label>
                  <input class="form-control" type="file" id="avatarFile" accept=".png, .jpg, .jpeg" name="imgFile" />
                </div>
                <div class="col-12 mb-3">
                  <img style="max-height: 250px; display: none;" alt="avatar preview" id="avatarPreview">
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                <button type="submit" class="btn btn-info">Thêm</button>
              </div>
            </div>
          </div>
        </form:form>
        <table class="table table-striped table-hover">
          <thead>
            <tr class="top-table">
              <th scope="col">Tên dự án</th>
              <th scope="col">Github</th>
              <th scope="col">Website</th>
              <th scope="col">Hành động</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="portifolio" items="${portifolios}">
              <tr>
                <td>${portifolio.name}</td>
                <td><a href="${portifolio.github}">${portifolio.github}</a></td>
                <td><a href="${portifolio.website}">${portifolio.website}</a></td>
                <td>
                  <div class="text-center">
                    <a type="button" class="btn btn-success" href="/user/profile/portifolio/detail/${portifolio.id}">
                      Xem chi tiết
                    </a>
                    <a type="button" class="btn btn-warning" href="/user/profile/portifolio/${portifolio.id}">
                      Chỉnh sửa
                    </a>
                    <a type="button" class="btn btn-danger" href="/user/profile/portifolio/delete/${portifolio.id}">
                      Xóa
                    </a>
                  </div>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>

        <div class="text-center mb-3">
          <a type="button" class="btn btn-outline-success" href="/user/profile">
            Trở về
          </a>
        </div>

        <jsp:include page="../layout/footer.jsp" />

        <script src="/js/bootstrap.bundle.js"></script>
        <script src="/user/js/skills.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      </body>
      </html>