

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> DANH MỤC</div>
        <ul class="list-group category_block">

            <li class="list-group-item text-white  "><a href="category?ccid=1">NHẪN</a></li>
            <li class="list-group-item text-white "><a href="category?ccid=2">LẮC TAY</a></li>
            <li class="list-group-item text-white "><a href="category?ccid=3">DÂY CHUYỀN</a></li>
            <li class="list-group-item text-white "><a href="category?ccid=4">HOA TAI</a></li>
        </ul>
    </div>
    <div class="card bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase">Last product</div>
        <div class="card-body">
            <img class="img-fluid" src="${p.image}" />
            <h5 class="card-title">${p.name}</h5>
            <p class="card-text">${p.title}</p>
            <p class="bloc_left_price">${p.price} $</p>
        </div>
    </div>
</div>