<%@page contentType="text/html" pageEncoding="UTF-8" %>
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

    <div class="table-messages table-responsive">
      <table class="table table-striped table-hover">
        <thead>
          <tr class="top-table">
            <th scope="col">Họ và tên</th>
            <th scope="col">Ngày sinh</th>
            <th scope="col">Giới tính</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Email</th>
            <th scope="col">Số điện thoại</th>
            <th scope="col">Hành động</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <td>Nguyễn Quang Thái</td>
            <td>17-04-2002</td>
            <td>Nam</td>
            <td>Hải Dương</td>
            <td>quangthai170402@gmail.com</td>
            <td>0343282228</td>
            <td>
              <a type="button" class="btn btn-success">
                View
              </a>
              <a type="button" class="btn btn-warning">
                Update
              </a>
              <a type="button" class="btn btn-danger">
                Delete
              </a>
              <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false"
                tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="staticBackdropLabel">Delete Message</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <h5 class="text-body">Are you sure want to delete this message ?</h5>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-info btn-delete-message"
                        data-bs-dismiss="modal">Delete</button>
                    </div>
                  </div>
                </div>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <jsp:include page="./layout/footer.jsp" />
    <script src="/user/js/messages.js"></script>
    <script src="/js/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  </body>

  </html>