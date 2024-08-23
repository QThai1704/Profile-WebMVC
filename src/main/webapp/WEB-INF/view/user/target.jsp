<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mục tiêu</title>
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link rel="stylesheet" href="/user/css/admin.css">
        <link rel="stylesheet" href="/css/reset.css">
        <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
      </head>

      <body>
        <jsp:include page="./layout/header.jsp" />

        <div class="image">
          <img src="/images/Hinh-Anime-Thien-Nhien-Dep-Cute-Nhat.jpg" alt="">
        </div>
        <div class="container">
          <div class="row">
            <div class="col text-center">
              <button type="button" class="btn btn-outline-success btn-add" data-toggle="modal" data-target="#myModal">
                Thêm mục tiêu
              </button>
            </div>
          </div>
        </div>
        <div class="modal" id="myModal">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Thêm mục tiêu cá nhân</h4>
              </div>
              <div class="modal-body">
                <form>
                  <div class="mb-3">
                    <label class="form-label">Tiêu đề:</label>
                    <input type="text" class="form-control add-name-skill">
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Nội dung:</label>
                    <textarea class="form-control" rows="10" data-bs-spy="scroll"></textarea>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-info btn-add-skill" data-dismiss="modal">Thêm</button>
              </div>
            </div>
          </div>
        </div>
        <table class="table table-striped table-hover">
          <thead>
            <tr class="top-table">
              <th scope="col">Tiêu đề</th>
              <th scope="col">Nội dung</th>
              <th scope="col">Hành động</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="name-skill">HTML5</td>
              <td class="level-skill">80</td>
              <td>
                <div class="text-center">
                  <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModalUpdate">
                    Chỉnh sửa
                  </button>
                  <div class="modal" id="myModalUpdate">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title">Chỉnh sửa mục tiêu cá nhân</h4>
                        </div>
                        <div class="modal-body">
                          <form>
                            <div class="mb-3">
                              <label class="form-label">Tiêu đề:</label>
                              <input type="text" class="form-control add-name-skill">
                            </div>
                            <div class="mb-3">
                              <label class="form-label">Nội dung:</label>
                              <textarea class="form-control" rows="10" data-bs-spy="scroll"></textarea>
                            </div>
                          </form>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                          <button type="button" class="btn btn-info btn-add-skill" data-dismiss="modal">Lưu</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModalDelete">
                    Xóa
                  </button>
                  <div class="modal" id="myModalDelete">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title ">Cảnh báo!</h4>
                        </div>
                        <div class="modal-body">
                          <div>
                            <span class="text-danger">Bạn có chắc chắn muốn xóa mục tiêu này không?</span>
                          </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
                          <button type="button" class="btn btn-info btn-add-skill" data-dismiss="modal">Đồng ý</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </td>
            </tr>
          </tbody>
        </table>

        <div class="text-center mb-3">
          <a type="button" class="btn btn-outline-success" href="/user/profile">
            Quay về
          </a>
        </div>

        <jsp:include page="./layout/footer.jsp" />

        <script src="/user/js/overview.js"></script>
        <script src="/js/bootstrap.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      </body>

      </html>