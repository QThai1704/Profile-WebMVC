<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Overview</title>
  <link rel="stylesheet" href="/css/bootstrap.css">
  <link rel="stylesheet" href="/user/css/admin.css">
  <link rel="stylesheet" href="/css/reset.css">
  <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
</head>

<body>
  <jsp:include page="./layout/header.jsp" />

  <div class="image">
    <img src="./images/Hinh-Anime-Thien-Nhien-Dep-Cute-Nhat.jpg" alt="">
  </div>

  <table class="table table-hover">
    <thead>
      <tr class="top-table">
        <th scope="col">Name</th>
        <th scope="col">Major</th>
        <th scope="col">Task</th>
      </tr>
    </thead>
    <tbody class="table-group-divider">
      <tr>
        <td id="name-overview">Anthony Barnett</td>
        <td id="major-overview">Web Developer, Graphic Designer, Photographer</td>
        <td>
          <div class="text-center">
            <button type="button" class="btn btn-info btn-edit-overview" data-bs-toggle="modal"
              data-bs-target="#exampleModal">
              Edit
            </button>
          </div>

          <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Change Information</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <form>
                    <div class="mb-3">
                      <label for="formFileSm" class="form-label">Choose image profile:</label>
                      <input class="form-control form-control-sm" id="formFileSm" type="file">
                    </div>
                    <div class="mb-3">
                      <label class="form-label">Name:</label>
                      <input type="text" class="form-control" id="input-name-overview">
                    </div>
                    <div class="mb-3">
                      <label class="form-label">Major:</label>
                      <input type="text" class="form-control" id="input-major-overview">
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-info btn-save-overview" data-bs-dismiss="modal">Save
                    changes</button>
                </div>
              </div>
            </div>
    </tbody>
  </table>

  <div class="text-center mb-3">
    <a type="button" class="btn btn-outline-success" href="/user/profile">
      Go Back Profiles
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