<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TSG STORE ACCESSORY</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/menu.css" type="text/css" rel="stylesheet">

    </head>
    <!--begin of menu-->
    <header>
        <a class="header_logo" href="home"><img src="image/TSG_ACCESSORY1.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <nav class="navbar navbar-expand-md navbar-orange bg-orange">

            <!--            <div class="container">-->

            <form action="search" method="post" class="form-inline my-2 my-lg-0">

                <div class="input-group input-group-sm">
                    <input value="${t}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Tìm kiếm...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>

            </form>
            <a class="btn btn-success btn-sm ml-3" href="show">
                <i class="fa fa-shopping-cart"></i> giỏ hàng
                <!--                        <span class="badge badge-light">3</span>-->
            </a>

            <div style="color: white;"  class="header_menu" id="navbarsExampleDefault">
                <ul class="navbar-nav m-auto">
                    <c:if test="${sessionScope.acc != null}">
                        <li class="nav-item">
                            <a  class="nav-link" href="#">Kết nối</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Liên Hệ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="manager">Quản lí sản phẩm</a>
                        </li>
                        <!--                            <li class="nav-item">
                                                        <a class="nav-link" href="#"> ${sessionScope.acc.user} </a>
                                                    </li>-->
                        <li class="nav-item">
                            <a class="nav-link" href="logout">Đăng xuất</a>
                        </li>
                    </c:if>

                </ul>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Đăng nhập</a>
                    </li>   
                </c:if>



            </div>

            <!--</div>-->

        </nav>


        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading">TSG ACCESSORY</h1>
                <p class="lead text-muted mb-0">Ý tưởng khởi nguồn bắt đầu từ việc ghi lại dấu ấn những khoảng khắc nhỏ trong cuộc sống hằng ngày.Chúng tôi luôn cố gắng duy trì các tiêu chuẩn chất lượng nghiêm ngặt trong quá trình sản xuất và hoàn thiện hơn mỗi ngày.</p>
            </div>
        </section>
    </header>
    <div class="container">
        <div class="row">
            <div class="col">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
<!--                        <li class="breadcrumb-item"><a href="home">Trang Chủ</a></li>
                        <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
                                                    <li class="breadcrumb-item active" aria-current="#">Sub-category</li>-->
                    </ol>
                </nav>
            </div>
        </div>
    </div>

    <!--end of menu-->
