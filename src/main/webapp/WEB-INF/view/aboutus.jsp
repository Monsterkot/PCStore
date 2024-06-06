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
<div class="container">
    <div class="row">
        <div class="col-lg-3">
            <h1 class="mt-4 mb-1">PC Store</h1>
            <h4>О нас</h4>
        </div>
        
        <div class="col-lg-9 mt-3">
            <div class="row mt-5 aboutus">
                <div class="col-lg-9 col-md-6 mb-4 mt-5">
                    <p class="fs-5">Добро пожаловать в "PC Store" - ваш надежный партнер в мире компьютерных комплектующих! Мы гордимся тем, что предлагаем широкий ассортимент высококачественных комплектующих для компьютеров по доступным ценам.</p>
                    <p class="fs-5">Наша компания была основана с одной целью: обеспечить наших клиентов самыми современными и надежными продуктами для создания или модернизации их компьютеров. Мы стремимся быть вашими надежными партнерами в мире технологий, предлагая только проверенные бренды и продукты.</p>
                    <p class="fs-5">В "PC Store" мы понимаем, что каждый клиент уникален, и мы готовы предложить индивидуальный подход к каждому. Наша команда состоит из опытных специалистов, готовых помочь вам подобрать идеальное решение для ваших потребностей. Мы всегда рады консультировать вас по любым вопросам о наших продуктах или услугах.</p>
                    <p class="fs-5">Наше стремление к качеству простирается не только на наши продукты, но и на наш сервис. Мы делаем все возможное, чтобы ваш опыт покупки у нас был приятным и беззаботным. Благодаря нашей быстрой доставке и заботливой поддержке мы стремимся превзойти ваши ожидания.</p>
                    <p class="fs-5">Мы гордимся тем, что являемся частью сообщества энтузиастов компьютеров и технологий. Мы поддерживаем различные инициативы и мероприятия, направленные на развитие этой индустрии и обогащение знаний наших клиентов.</p>
                    <p class="fs-5">Спасибо, что выбрали "PC Store" для ваших потребностей в компьютерных комплектующих. Мы готовы быть вашими надежными партнерами в мире технологий!</p>
                </div>
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
