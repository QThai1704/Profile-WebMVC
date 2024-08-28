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
                <form:form action="/user/profile/experience/delete" method="POST" modelAttribute="deleteExperience">
                    <div class="container">
                        <div class="row">
                            <div class="my-3">
                                <h2 class="text-danger">Cảnh báo!</h2>
                            </div>
                            <div class="d-flex justify-content-center">
                                <div class="mb-3 d-none">
                                    <label class="form-label">Id:</label>
                                    <form:input type="hidden" class="form-control" path="id" />
                                </div>
                                <div class="alert alert-danger text-center" role=" alert">
                                    Bạn có chắc chắn muốn xóa <span class="fw-bold">kinh nghiệm</span> này không?
                                </div>
                            </div>
                            <div class="col-12 text-center mb-5">
                                <a type="button" class="btn btn-danger" href="/user/profile/experience">
                                    Hủy
                                </a>
                                <button type="submit" class="btn btn-info" href="">Đồng ý</button>
                            </div>
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