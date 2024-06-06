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

    <div class="row">

        <div class="col-lg-3 col-md-6">
            <h1 class="mt-4">PC Store</h1>
            <h4>Корзина</h4>
        </div>

        <div class="col-lg-9 col-md-6">
            <div class="row mt-5 mb-3">
                <div class="col-lg-4 col-md-6 mb-4">
                    <c:set var="totalPrice" value="0" />
                    <c:forEach var="item" items="${Items}">
                        <c:url var="getItemInfo" value="/product">
                            <c:param name="productId" value="${item.productId}"/>
                        </c:url>
                        <div class="card mb-2" style="width:50rem">
                            <div class="row">
                              <div class="col-md-4">
                                <img style="cursor: pointer"
                                     onclick="window.location.href='${getItemInfo}'"
                                     src="${pageContext.request.contextPath}${item.image}"
                                     class="img-fluid rounded-start"
                                     alt="...">
                              </div>
                              <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        <a style="cursor: pointer" onclick="window.location.href='${getItemInfo}'">${item.model} ${item.brand}</a>
                                    </h5>
                                  <p class="card-text">${item.price}$</p>
                                </div>
                                <div class="card-footer text-center">
                                    <c:url var="deleteItem" value="/deleteFromCart">
                                        <c:param name="itemId" value="${item.id}"/>
                                    </c:url>
                                    <button type="button" class="btn btn-outline-danger" onclick="window.location.href='${deleteItem}'">Удалить из корзины</button>
                                </div>
                              </div>
                            </div>
                        </div>
                        <c:set var="totalPrice" value="${totalPrice + item.price}" />
                    </c:forEach>
                </div>
            </div>         
        </div>
    </div>
</div>

<div class="container d-flex justify-content-center align-items-center">
    <div class="row">
        <div class="col-lg-12">
            <div class="card mb-2" style="width: 50rem;">
                <div class="row text-center">
                    <div class="col-md-6 align-self-center">
                        <h3>Итого: ${totalPrice}$</h3>
                    </div>
                    <div class="col-md-6">
                        <div class="card-body">
                            <button type="button" class="btn btn-success" <%--data-bs-toggle="modal" data-bs-target="#customerFormModal"--%> onclick="validateOrder()">Оформить заказ</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Footer -->
<%@include file="footer.jsp"%>

<c:url var="orderProcessed" value="/orderProcessed">
    <c:param name="orderPrice" value="${totalPrice}"/>
</c:url>

<div class="modal fade" id="customerFormModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Оформление заказа</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
            </div>
            <div class="modal-body">
                <form id="orderForm" action="${orderProcessed}" method="post">
                    <div class="mb-3">
                        <label for="name" class="col-form-label">ФИО:</label>
                        <input type="text" class="form-control" id="name" name="name">
                        <small id="name-error" class="form-text text-danger"></small>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="col-form-label">Электронная почта:</label>
                        <input type="email" class="form-control" id="email" name="email">
                        <small id="email-error" class="form-text text-danger"></small>

                    </div>
                    <div class="mb-3">
                        <label for="number" class="col-form-label">Номер телефона:</label>
                        <input type="text" class="form-control" id="number" name="number">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary" onclick="submitForm()">Оформить заказ</button>
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Отмена</button>
            </div>
        </div>
    </div>
</div>

<!-- Модальное окно для пустой корзины -->
<div class="modal fade" id="emptyCartModal" tabindex="-1" role="dialog" aria-labelledby="emptyCartModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="emptyCartModalLabel">Внимание!</h5>
            </div>
            <div class="modal-body">
                Ваша корзина пуста. Пожалуйста, добавьте товары в корзину перед оформлением заказа.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Закрыть</button>
            </div>
        </div>
    </div>
</div>

<script>
    function validateOrder(){
        let orderPrice = parseFloat("${totalPrice}");
        if(orderPrice === 0){
            $('#emptyCartModal').modal('show');
        }else{
            $('#customerFormModal').modal('show');
        }
    }
    function validateName(){
        let nameField = document.getElementById("name");
        let nameErrorField = document.getElementById("name-error");
        let name = nameField.value.trim();

        if(!name){
            nameErrorField.innerText = "Поле для ввода ФИО не может быть пустым";
            nameField.focus();
            return false;
        } else {
            nameErrorField.innerText = "";
            return true;
        }
    }
    function validateEmail() {
        let emailField = document.getElementById("email");
        let emailErrorField = document.getElementById("email-error");
        let email = emailField.value.trim();
        // Регулярное выражение для проверки формата email-адреса
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if(emailRegex.test(email)){
            emailErrorField.innerText = "";
            return true;
        }else{
            emailErrorField.innerText = "Пожалуйста, введите корректный адрес электронной почты.";
            emailField.focus();
            return false;
        }
    }
    function submitForm(){
        if(validateEmail() & validateName()){
            document.getElementById("orderForm").submit();
        }
    }
</script>
<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.js"></script>
</body>

</html>