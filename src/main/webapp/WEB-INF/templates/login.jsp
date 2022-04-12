<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <jsp:include page="sections/head.jsp">
        <jsp:param name="titleName" value="Login"/>
    </jsp:include>
<body>
<div class="container-fluid">

    <div class="row m-2">
        <h1 class="text-center">Авторизоваться</h1>
    </div>

    <div class="row mt-4 mb-4">
        <h3 class="text-left text-danger">${error}</h3>
        <h3 class="text-left text-info">${message}</h3>
    </div>

    <div class="row">
        <form action="${pageContext.request.contextPath}/login" method="post">

            <div class="mb-3">
                <label for="userEmail" class="form-label">Почта</label>
                <input name="email" type="email" class="form-control" id="userEmail" placeholder="Введите почту"/>
            </div>

            <div class="mb-3">
                <label for="userPassword" class="form-label">Пароль</label>
                <input name="password" type="password" class="form-control" id="userPassword" placeholder="Введите пароль" />
            </div>

            <div class="mb-3">
                <button class="btn btn-success" type="submit">Войти</button>
            </div>

        </form>
    </div>

</div>
</body>
</html>
