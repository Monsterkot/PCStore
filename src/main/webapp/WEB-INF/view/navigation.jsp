<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Navigation</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a style="cursor: pointer" class="navbar-brand" onclick="window.location.href='home'">PC Store</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a style="cursor: pointer" class="nav-link" onclick="window.location.href='products'">Каталог<i class="fas fa-shopping-bag"></i> </a>
                </li>
                <li class="nav-item">
                    <a style="cursor: pointer" class="nav-link" onclick="window.location.href='us'">О нас<i class="icon-users"></i></a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">Контакты<i class="icon-contacts"></i>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><p class="text-center">+375(33)616-10-90</p></li>
                        <li><p class="text-center">+375(29)705-88-14</p></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a style="cursor: pointer" class="nav-link" onclick="window.location.href='cart'">Корзина<i class="icon-basket"></i></a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>