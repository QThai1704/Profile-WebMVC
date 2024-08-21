<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Messages</title>
      <link rel="stylesheet" href="/css/bootstrap.css">
      <link rel="stylesheet" href="/user/css/admin.css">
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
      <link rel="stylesheet" href="/css/reset.css">
      <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">

    </head>

    <body>
      <jsp:include page="./layout/header.jsp" />
      <div class="image">
        <img src="/images/Hinh-Anime-Thien-Nhien-Dep-Cute-Nhat.jpg" alt="">
      </div>

      <table class="table table-striped table-hover">
        <thead>
          <tr class="top-table">
            <th scope="col"></th>
            <th scope="col">Thông tin</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="key-about">Họ và tên</td>
            <td class="information-about">${user.fullName}</td>
          </tr>
          <tr>
            <td class="key-about">Ngày sinh</td>
            <td class="information-about">${user.dateOfBirth}</td>
          </tr>
          <tr>
            <td class="key-about">Giới tính</td>
            <td class="information-about">${user.gender}</td>
          </tr>
          <tr>
            <td class="key-about">Số điện thoại</td>
            <td class="information-about">${user.phoneNumber}</td>
          </tr>
          <tr>
            <td class="key-about">Email</td>
            <td class="information-about">${user.email}</td>
          </tr>
          <tr>
            <td class="key-about">Address</td>
            <td class="information-about">${user.address}</td>
          </tr>
          <tr>
            <td class="key-about">Ngôn ngữ</td>
            <td class="information-about">${user.language}</td>
          </tr>
          <tr>
            <td class="key-about">Vị trí ứng tuyển</td>
            <td class="information-about">${user.candidate}</td>
          </tr>
        </tbody>
      </table>
      <div class="text-center mb-5">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
          data-bs-whatever="@mdo">Chỉnh sửa thông tin cá nhân</button>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Chỉnh sửa thông tin cá nhân</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <form>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Họ và tên</label>
                    <input type="text" class="form-control" id="recipient-name">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Ngày sinh</label>
                    <input type="text" class="form-control" id="recipient-name">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Giới tính</label>
                    <input type="text" class="form-control" id="recipient-name">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Số điện thoại</label>
                    <input type="text" class="form-control" id="recipient-name">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Email</label>
                    <input type="text" class="form-control" id="recipient-name">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Địa chỉ</label>
                    <input type="text" class="form-control" id="recipient-name">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Ngôn ngữ</label>
                    <input type="text" class="form-control" id="recipient-name">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Vị trí ứng tuyển</label>
                    <input type="text" class="form-control" id="recipient-name">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Ảnh đại diện</label>
                    <input type="text" class="form-control" id="recipient-name">
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Lưu</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <jsp:include page="./layout/footer.jsp" />

      <script src="/user/js/messages.js"></script>
      <script src="/js/bootstrap.js"></script>
      <script src="/js/bootstrap.bundle.js"></script>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>

    </html>