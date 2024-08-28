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
                <jsp:include page="../layout/header.jsp" />

                <div class="image">
                    <img src="/images/Hinh-Anime-Thien-Nhien-Dep-Cute-Nhat.jpg" alt="">
                </div>
                <div class="mt-3">
                    <p class="h2 text-center title">Chi tiết dự án</p>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr class="top-table">
                            <th scope="col"></th>
                            <th scope="col">Thông tin dự án</th>
                        </tr>
                    </thead>
                    <tbody class="text-start">
                        <tr>
                            <td class="key-about">Tên dự án</td>
                            <td>${detailPortifolio.name}</td>
                        </tr>
                        <tr>
                            <td class="key-about">Github</td>
                            <td class="information-about">
                                <a href="${detailPortifolio.github}">${detailPortifolio.github}</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="key-about">Website</td>
                            <td class="information-about">
                                <a href="${detailPortifolio.website}">${detailPortifolio.website}</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="key-about">Mô tả dự án</td>
                            <td class="information-about">
                                <pre
                                    style="white-space: pre-wrap; overflow: hidden; line-height: 1.5;">${detailPortifolio.detailDesc}</pre>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top;">Hình ảnh</td>
                            <td>
                                <img style="max-height: 200px" alt="avatar preview"
                                    src="/images/profile/${detailPortifolio.image}" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="text-center mb-3">
                    <a type="button" class="btn btn-warning" href="/user/profile/portifolio">
                        Quay về
                    </a>
                </div>

                </div>
                <jsp:include page="../layout/footer.jsp" />

                <script src="/user/js/overview.js"></script>
                <script src="/js/bootstrap.js"></script>
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
            </body>

            </html>