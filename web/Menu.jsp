<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!--begin of menu-->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="home">TSG </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Facebook</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Instagram</a>
                        </li>
                        <c:if test="${sessionScope.acc != null}">
                            <li class="nav-item">
                            <a class="nav-link" href="#">Hello ${sessionScope.acc.user} </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="logout">Logout</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.acc == null}">
                              <li class="nav-item">
                              <a class="nav-link" href="Login.jsp">Login</a>
                            </li>   
                        </c:if>
                    </ul>

                    <form action="search" method="post" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input value="${t}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Tìm kiếm...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <a class="btn btn-success btn-sm ml-3" href="show">
                            <i class="fa fa-shopping-cart"></i> giỏ hàng
                            <span class="badge badge-light">3</span>
                        </a>
                    </form>
                </div>
            </div>
        </nav>
        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading">TSG ACCESSORY</h1>
                <p class="lead text-muted mb-0">Ý tưởng khởi nguồn bắt đầu từ việc ghi lại dấu ấn những khoảng khắc nhỏ trong cuộc sống hằng ngày.Chúng tôi luôn cố gắng duy trì các tiêu chuẩn chất lượng nghiêm ngặt trong quá trình sản xuất và hoàn thiện hơn mỗi ngày.</p>
            </div>
        </section>
         <div class="container">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="home">Trang Chủ</a></li>
                            <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
                            <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!--end of menu-->
