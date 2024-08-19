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
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Date</th>
            <th scope="col">Status</th>
            <th scope="col">Method</th>
            <th scope="col">Task</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <th scope="row" class="id-message">01</th>
            <td>Nguyễn Văn A</td>
            <td>nguyenvana@gmail.com</td>
            <td>15-03-2022</td>
            <td>Already seen</td>
            <td>Gmail</td>
            <td>
              <div class="text-center">
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop1">
                  Del
                </button>
              </div>
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
          <tr>
            <th scope="row" class="id-message">02</th>
            <td>Pham Minh H</td>
            <td>phamminhh@gmail.com</td>
            <td>29-01-2022</td>
            <td>Already seen</td>
            <td>Gmail</td>
            <td>
              <div class="text-center">
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
                  Del
                </button>
              </div>
              <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false"
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
          <tr>
            <th scope="row" class="id-message">03</th>
            <td>Hoàng Manh K</td>
            <td>hoangkhoa@gmail.com</td>
            <td>30-11-2022</td>
            <td>Not seen</td>
            <td>Gmail</td>
            <td>
              <div class="text-center">
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop3">
                  Del
                </button>
              </div>
              <div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false"
                tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="staticBackdropLabel">Delete Messages</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <h5 class="text-body">Are you sure want to delete this messages ?</h5>
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