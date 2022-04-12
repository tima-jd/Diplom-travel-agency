<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">ToTim</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="<c:url value="/manager"/>">Главное</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/hotels"/>">Управление отелями</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/customers"/>">Управление клиентами</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/admin"/>">Администрирование</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/logout"/>">Выйти</a>
            </li>
        </ul>
    </div>
</nav>
