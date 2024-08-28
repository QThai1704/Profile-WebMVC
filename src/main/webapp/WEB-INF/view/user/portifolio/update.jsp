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
                <link rel="stylesheet" href="/user/css/admin.css">
                <link rel="stylesheet" href="/css/reset.css">
                <link rel="stylesheet" href="/fonts/themify-icons/themify-icons.css">
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
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
                <form:form action="/user/profile/portifolio/update" method="POST" enctype="multipart/form-data"
                    modelAttribute="updatePortifolio">
                    <div class="container">
                        <div>
                            <div class="my-3">
                                <p class="h2 text-center title">Chỉnh sửa dự án cá nhân</p>
                            </div>
                            <div class="mb-3 text-center">
                                <img style="max-height: 250px" alt="avatar preview"
                                    src="/images/profile/${updatePortifolio.image}" />
                            </div>
                            <div class="mb-3 d-none">
                                <label class="form-label">Id:</label>
                                <form:input type="hidden" class="form-control" path="id" />
                            </div>
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
                                <form:input type="text" class="form-control"
                                    placeholder="Đường dẫn tới website (nếu có)" path="website" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Mô tả dự án:</label>
                                <form:textarea class="form-control" rows="10" data-bs-spy="scroll" path="detailDesc" />
                            </div>
                            <div class="mb-3 col-md-6 col-12">
                                <label for="avatarFile" class="form-label">Thay đổi hình ảnh dự án:</label>
                                <input class="form-control" type="file" id="avatarFile" accept=".png, .jpg, .jpeg"
                                    name="updateImgFile" />
                            </div>
                            <div class="col-12 mb-3">
                                <img style="max-height: 250px; display: none;" alt="avatar preview" id="avatarPreview">
                            </div>
                        </div>
                        <div class="text-center mb-3">
                            <a type="button" class="btn btn-danger" href="/user/profile/portifolio">
                                Hủy
                            </a>
                            <button type="submit" class="btn btn-success">
                                Lưu
                            </button>
                        </div>
                    </div>
                </form:form>

                <jsp:include page="../layout/footer.jsp" />

                <script src="/user/js/overview.js"></script>
                <script src="/js/bootstrap.js"></script>
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
            </body>

            </html>