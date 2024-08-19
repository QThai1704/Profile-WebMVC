<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact</title>
  <link rel="stylesheet" href="/css/bootstrap.css">
  <link rel="stylesheet" href="/css/reset.css">
  <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
  <link rel="stylesheet" href="/user/css/admin.css">
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
          Add Contact
        </button>
      </div>
    </div>
  </div>

  <div class="modal" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">

        <div class="modal-header">
          <h4 class="modal-title">ADD CONTACT</h4>
        </div>

        <div class="modal-body">
          <form>
            <div class="mb-3">
              <label class="form-label">Key:</label>
              <input type="text" class="form-control add-key-contact">
            </div>
            <div class="mb-3">
              <label class="form-label">Information:</label>
              <input type="text" class="form-control add-information-contact">
            </div>
          </form>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-info btn-add-contact" data-dismiss="modal">Add</button>
        </div>
      </div>
    </div>
  </div>

  <table class="table table-striped table-hover">
    <thead>
      <tr class="top-table">
        <th scope="col">Key</th>
        <th scope="col">Information</th>
        <th scope="col">Tasks</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="key-contact">Address</td>
        <td class="information-contact">140, City Center, New York, U.S.A</td>
        <td>
          <div class="text-center">
            <button type="button" class="btn btn-info btn-edit-contact" data-bs-toggle="modal"
              data-bs-target="#exampleModal1">
              Edit
            </button>
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop1">
              Del
            </button>

            <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel"
              aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Contact</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="mb-3">
                        <label class="form-label">Key:</label>
                        <input type="text" class="form-control input-key-contact">
                      </div>
                      <div class="mb-3">
                        <label class="form-label">Information:</label>
                        <input type="text" class="form-control input-information-contact">
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-info btn-save-contact" data-bs-dismiss="modal">Save
                      changes</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false"
              tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Delete Contact</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <h5 class="text-body">Are you sure want to delete this contact ?</h5>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-info btn-delete-contact"
                      data-bs-dismiss="modal">Delete</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </td>
      </tr>
      <tr>
        <td class="key-contact">Phone</td>
        <td class="information-contact">+1718-111-0011</td>
        <td>
          <div class="text-center">
            <button type="button" class="btn btn-info btn-edit-contact" data-bs-toggle="modal"
              data-bs-target="#exampleModal2">
              Edit
            </button>
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
              Del
            </button>

            <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel"
              aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Contact</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="mb-3">
                        <label class="form-label">Key:</label>
                        <input type="text" class="form-control input-key-contact">
                      </div>
                      <div class="mb-3">
                        <label class="form-label">Information:</label>
                        <input type="text" class="form-control input-information-contact">
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-info btn-save-contact" data-bs-dismiss="modal">Save
                      changes</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false"
              tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Delete Contact</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <h5 class="text-body">Are you sure want to delete this contact ?</h5>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-info btn-delete-contact"
                      data-bs-dismiss="modal">Delete</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </td>
      </tr>
      <tr>
        <td class="key-contact">Email</td>
        <td class="information-contact">anthony@company.com</td>
        <td>
          <div class="text-center">
            <button type="button" class="btn btn-info btn-edit-contact" data-bs-toggle="modal"
              data-bs-target="#exampleModal3">
              Edit
            </button>
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop3">
              Del
            </button>

            <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel"
              aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Contact</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="mb-3">
                        <label class="form-label">Key:</label>
                        <input type="text" class="form-control input-key-contact">
                      </div>
                      <div class="mb-3">
                        <label class="form-label">Information:</label>
                        <input type="text" class="form-control input-information-contact">
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-info btn-save-contact" data-bs-dismiss="modal">Save
                      changes</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false"
              tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Delete Contact</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <h5 class="text-body">Are you sure want to delete this contact ?</h5>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-info btn-delete-contact"
                      data-bs-dismiss="modal">Delete</button>
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
      Go Back Profiles
    </a>
  </div>

  <jsp:include page="./layout/footer.jsp" />


  <script src="/user/js/contact.js"></script>
  <script src="/js/bootstrap.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>