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
    <title>PC Store</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/fontello.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
</head>

<body>

<!-- Navigation -->
<%@include file="navigation.jsp"%>

<!-- Page Content -->
<section>
    <div class="container mb-5">
        <div class="row">
            <div class="col-lg-3 col-md-12">
                <h1 class="mt-5">PC Store</h1>
                <p>
                    Лучшие цены на рынке!
                    Бесплатная доставка по всему миру!
                </p>
                <button id="start-purchase-btn" type="button" class="btn btn-lg">
                    <a id="start-purchase-link" onclick="window.location.href='products'">
                        Начать покупки
                    </a>
                </button>
            </div>
            <div class="col-lg-9 col-md-12 mt-5">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src="${pageContext.request.contextPath}/images/home_page/proc.jpg" class="d-block w-100" alt="">
                      </div>
                      <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/images/home_page/system_blockjpg.jpg" class="d-block w-100" alt="">
                      </div>
                      <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/images/home_page/videocard.jpg" class="d-block w-100" alt="">
                      </div>
                      <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/images/home_page/pc.jpg" class="d-block w-100" alt="">
                      </div>
                      <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/images/home_page/videocards.jpg" class="d-block w-100" alt="">
                      </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Предыдущий</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Следующий</span>
                    </button>
                  </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="whywe">
    <div class="container">
        <div class="row">
          <div class="col-12">
            <h2 class="text-center text-uppercase color1 mb-5">Почему именно мы?</h2>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-6 col-sm-12">
            <h5 class="text-center">Бесплатная доставка в любую точку мира</h5>
          </div>
          <div class="col-md-6 col-sm-12">
            <h5 class="text-center">Огромный ассортимент комплектующих</h5>
          </div>
          <div class="col-md-6 col-sm-12">
            <h5 class="text-center">Гарантия 1 год на любую позицию товара</h5>
          </div>
          <div class="col-md-6 col-sm-12">
            <h5 class="text-center">Демократичные цены</h5>
          </div>
        </div>
        <div class="row">
          <div class="col-12 text-center">
            <button id="start-purchase-btn" type="button" class="btn btn-lg">
                <a id="start-purchase-link" onclick="window.location.href='products'">
                    Просмотреть каталог
                </a>
            </button>
          </div>
        </div>
      </div>
</section>

<!-- Footer -->
<%@include file="footer.jsp"%>

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.js"></script>
</body>

</html>
