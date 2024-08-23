<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
    <link rel="stylesheet" href="/user/css/admin.css">
  </head>

  <body>
    <jsp:include page="./layout/header.jsp" />
    <div class="image">
      <img src="/images//Hinh-Anime-Thien-Nhien-Dep-Cute-Nhat.jpg" alt="">
    </div>

    <div class="container">
      <div class="row">
        <div class="col text-center">
          <button type="button" class="btn btn-outline-success btn-add" data-toggle="modal" data-target="#myModal">
            Add About
          </button>
        </div>
      </div>
    </div>

    <div class="modal" id="myModal">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

          <div class="modal-header">
            <h4 class="modal-title">ADD ABOUT</h4>
          </div>

          <div class="modal-body">
            <form>
              <div class="mb-3">
                <label class="form-label">Key:</label>
                <input type="text" class="form-control add-key-about">
              </div>
              <div class="mb-3">
                <label class="form-label">Information:</label>
                <input type="text" class="form-control add-information-about">
              </div>
            </form>
          </div>

          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-info btn-add-about" data-dismiss="modal">Add</button>
          </div>
        </div>
      </div>
    </div>
    <div class="table-messages table-responsive">
      <table class="table table-striped table-hover">
        <thead>
          <tr class="top-table">
            <th scope="col">Tiêu đề</th>
            <th scope="col">Nội dung</th>
            <th scope="col">Hành động</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <c:forEach items="${users}" var="user">
              <td></td>
              <td></td>
            </c:forEach>
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
    <div class="text-center mb-3">
      <a type="button" class="btn btn-outline-success" href="/user/profile">
        Quay về
      </a>
    </div>

    <footer>
      <div class="container">
        <div class="row">
          <div class="col-mb-3">
            <h3 class="logo">Copyright belong to team 9</h3>
          </div>
          <div class="col-mb-3 text-center footer-icon">
            <a href="#" class="facebook"><i class="ti-facebook pe-2"></i></a>
            <a href="" class="twitter"><i class="ti-twitter-alt border-end border-start border-3 px-2"></i></a>
            <a href="" class="youtube"><i class="ti-youtube ps-2"></i></a>
          </div>
        </div>
      </div>
    </footer>
    <script src="/user/js/about.js"></script>
    <script src="/js/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  </body>