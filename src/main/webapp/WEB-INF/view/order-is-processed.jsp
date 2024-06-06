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
<div class="container-fluid d-flex justify-content-center align-items-center mt-3">
    <div class="text-center">
        <h2 class="mt-5">Ваш заказ успешно оформлен!</h2>
        <p class="lead">Спасибо за покупку в PC Store. Мы рады, что вы выбрали нас.</p>
        <button type="button" class="btn btn-success btn-lg mt-3" onclick="window.location.href='home'">На главную</button>
    </div>
</div>





<!-- Footer -->
<%@include file="footer.jsp"%>


<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.js"></script>
</body>

</html>
