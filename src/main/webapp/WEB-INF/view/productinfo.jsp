<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PC Store - Карточка товара</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/fontello.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
</head>
<body>

<!-- Navigation -->
<%@include file="navigation.jsp"%>
<!-- Page Content -->
<div class="container mt-3">
    <c:url var="addToCartButton" value="/addToCart">
        <c:param name="productId" value="${Product.id}" />
    </c:url>
    <div class="row">

        <div class="col-lg-6 col-md-12">
            <img style="height: 410px;" src="${pageContext.request.contextPath}${Product.image}" class="img-fluid img-thumbnail mx-auto d-block mt-5" alt="">
        </div>

        <div class="col-lg-6 col-md-12">
            <div class="row mt-5">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card" style="width: 40rem; height: 410px;">
                        <div class="card-body">
                            <h4 class="card-title">
                                <h1>${Product.brand} ${Product.model}</h1>
                            </h4>
                            <h4>Стоимость: ${Product.price}$</h4>
                            <h5>Краткое описание: ${Product.shortDescription}</h5>
                        </div>
                        <div class="card-footer text-center">
                            <button type="button" class="btn btn-outline-success" onclick="window.location.href='${addToCartButton}'">Отправить в корзину</button>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
    </div>
</div>

<div class="container">
    <div class="col-lg-12 mt-3">
        <div class="row mt-5 product-description">
            <div class="col-lg-9 col-md-6 mb-4 mt-5">
                <p class="fs-5"> <h3>Описание товара:</h3></p>
                <p class="fs-5">${Product.fullDescription}</p>
            </div>
        </div>    
    </div>
</div>

<!-- Footer -->
<%@include file="footer.jsp"%>

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.js"></script>
</body>

</html>