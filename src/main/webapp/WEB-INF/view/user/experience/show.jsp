<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Kinh nghiệm</title>
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link rel="stylesheet" href="/user/css/admin.css">
        <link rel="stylesheet" href="/css/reset.css">
        <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
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
                Thêm kinh nghiệm
              </button>
            </div>
          </div>
        </div>
        <form:form class="modal" id="myModal" action="/user/profile/experience/create" method="POST" enctype="form-data"
          modelAttribute="newExperience">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Thêm kinh nghiệm cá nhân</h4>
              </div>
              <div class="modal-body">
                <div class="mb-3">
                  <label class="form-label">Vị trí làm việc</label>
                  <form:input type="text" class="form-control" path="position" />
                </div>
                <div class="mb-3">
                  <label class="form-label">Tên công ty</label>
                  <form:input class="form-control" path="company" />
                </div>
                <div class="mb-3">
                  <label class="form-label">Thời gian bắt đầu</label>
                  <form:input class="form-control" placeholder="ngày-tháng-năm" path="startDate" />
                </div>
                <div class="mb-3">
                  <label class="form-label">Thời gian kết thúc</label>
                  <form:input class="form-control" placeholder="ngày-tháng-năm" path="endDate" />
                </div>
                <div class="mb-3">
                  <label class="form-label">Mô tả</label>
                  <form:textarea class="form-control" rows="10" data-bs-spy="scroll" path="description"></form:textarea>
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
              <th scope="col">Vị trí làm việc</th>
              <th scope="col">Tên công ty</th>
              <th scope="col">Ngày bắt đầu</th>
              <th scope="col">Ngày kết thúc</th>
              <th scope="col">Mô tả</th>
              <th scope="col">Hành động</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${experiences}" var="experience">
              <tr>
                <td>${experience.position}</td>
                <td>${experience.company}</td>
                <td>${experience.startDate}</td>
                <td>${experience.endDate}</td>
                <td class="text-start">
                  <pre
                    style="white-space: pre-wrap; overflow: hidden; line-height: 1.5;">${experience.description}</pre>
                </td>
                <td>
                  <div class="text-center">
                    <a type="button" class="btn btn-warning" href="/user/profile/experience/${experience.id}">
                      Chỉnh sửa
                    </a>
                    <a type="button" class="btn btn-danger" href="/user/profile/experience/delete/${experience.id}">
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
            Quay về
          </a>
        </div>

        <jsp:include page="../layout/footer.jsp" />
        <script src="/user/js/overview.js"></script>
        <script src="/js/bootstrap.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      </body>

      </html>