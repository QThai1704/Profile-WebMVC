<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portifolios</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
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
            Add Portifolio
          </button>
        </div>
      </div>
    </div>

    <div class="modal" id="myModal">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

          <div class="modal-header">
            <h4 class="modal-title">ADD PORTIFOLIO</h4>
          </div>

          <div class="modal-body">
            <form>
              <div class="mb-3">
                <label class="form-label">ID:</label>
                <input type="text" class="form-control add-id-portfolio">
              </div>
              <div class="mb-3">
                <label class="form-label">Category:</label>
                <input type="text" class="form-control add-category-portfolio">
              </div>
            </form>
          </div>

          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-info btn-add-portfolio" data-dismiss="modal">Add</button>
          </div>
        </div>
      </div>
    </div>

    <table class="table table-striped table-hover">
      <thead>
        <tr class="top-table">
          <th scope="col">ID</th>
          <th scope="col">Category</th>
          <th scope="col">Tasks</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="id-portfolio">01</td>
          <td class="category-portfolio">Web Developer</td>
          <td>
            <div class="text-center">
              <button type="button" class="btn btn-info btn-edit-portfolio" data-bs-toggle="modal"
                data-bs-target="#exampleModal1">
                Edit
              </button>
              <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop1">
                Del
              </button>

              <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Edit Portifolio</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <form>
                        <div class="mb-3">
                          <label class="form-label">ID:</label>
                          <input type="text" class="form-control input-id-portfolio">
                        </div>
                        <div class="mb-3">
                          <label class="form-label">Category:</label>
                          <input type="text" class="form-control input-category-portfolio">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 1:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 2:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 3:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 4:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-info btn-save-portfolio" data-bs-dismiss="modal">Save
                        changes</button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false"
                tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="staticBackdropLabel">Delete Portifolio</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <h5 class="text-body">Are you sure want to delete this portifolio ?</h5>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-info btn-delete-portfolio"
                        data-bs-dismiss="modal">Delete</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td class="id-portfolio">02</td>
          <td class="category-portfolio">Graphic Design</td>
          <td>
            <div class="text-center">
              <button type="button" class="btn btn-info btn-edit-portfolio" data-bs-toggle="modal"
                data-bs-target="#exampleModal2">
                Edit
              </button>
              <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
                Del
              </button>
              <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Edit Portifolio</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <form>
                        <div class="mb-3">
                          <label class="form-label">ID:</label>
                          <input type="text" class="form-control input-id-portfolio">
                        </div>
                        <div class="mb-3">
                          <label class="form-label">Category:</label>
                          <input type="text" class="form-control input-category-portfolio">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 1:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 2:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 3:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 4:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-info btn-save-portfolio" data-bs-dismiss="modal">Save
                        changes</button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false"
                tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="staticBackdropLabel">Delete Portifolio</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <h5 class="text-body">Are you sure want to delete this portifolio ?</h5>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-info btn-delete-portfolio"
                        data-bs-dismiss="modal">Delete</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td class="id-portfolio">03</td>
          <td class="category-portfolio">Photography</td>
          <td>
            <div class="text-center">
              <button type="button" class="btn btn-info btn-edit-portfolio" data-bs-toggle="modal"
                data-bs-target="#exampleModal3">
                Edit
              </button>
              <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop3">
                Del
              </button>
              <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Edit Portifolio</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <form>
                        <div class="mb-3">
                          <label class="form-label">ID:</label>
                          <input type="text" class="form-control input-id-portfolio">
                        </div>
                        <div class="mb-3">
                          <label class="form-label">Category:</label>
                          <input type="text" class="form-control input-category-portfolio">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 1:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 2:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 3:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                        <div class="mb-3">
                          <label for="formFileSm" class="form-label">Choose file image 4:</label>
                          <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-info btn-save-portfolio" data-bs-dismiss="modal">Save
                        changes</button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false"
                tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="staticBackdropLabel">Delete Portifolio</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <h5 class="text-body">Are you sure want to delete this portifolio ?</h5>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-info btn-delete-portfolio"
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

    <script src="/js/portfolios.js"></script>
    <script src="/js/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  </body>

  </html>