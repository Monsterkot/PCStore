<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PC Store - Каталог</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/fontello.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
</head>

<body>

<!-- Navigation -->
<%@include file="navigation.jsp"%>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-lg-3">
            <h1 class="mt-4 mb-1">PC Store</h1>
            <h4>Каталог</h4>
            <div class="list-group">
                <c:forEach var="category" items="${Categories}">
                    <c:url var="getByCategory" value="/getByCategory">
                        <c:param name="categoryId" value="${category.id}"/>
                    </c:url>
                    <a href="${getByCategory}" class="list-group-item">${category.name}</a>
                </c:forEach>
            </div>
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9 mt-3">
            <div class="row mt-5">
                <c:forEach var="product" items="${Products}">
                    <c:url var="addToCartButton" value="/addToCart">
                        <c:param name="productId" value="${product.id}" />
                    </c:url>
                    <c:url var="getItemInfo" value="/product">
                        <c:param name="productId" value="${product.id}"/>
                    </c:url>
                    <div class="col-lg-4 col-md-6 mb-4 mt-5">
                        <div class="card h-100">
                            <a href="#">
                                <img style="height: 170px" class="card-img-top"
                                     src="${pageContext.request.contextPath}${product.image}"
                                     alt="" onclick="window.location.href='${getItemInfo}'">
                            </a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a style="cursor: pointer" onclick="window.location.href='${getItemInfo}'">${product.brand} ${product.model}</a>
                                </h4>
                                <h5>${product.price}$</h5>
                                <p class="card-text mb-0">${product.shortDescription}</p>
                            </div>
                            <div class="card-footer text-center">
                                <button type="button" class="btn btn-outline-success" onclick="window.location.href='${addToCartButton}'">Отправить в корзину</button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!-- /.container -->

<!-- Footer -->
<%@include file="footer.jsp"%>

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.js"></script>
</body>
</html>
