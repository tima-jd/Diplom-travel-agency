<%@ page contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="sections/head.jsp">
    <jsp:param name="titleName" value="User details"/>
</jsp:include>
<body>
<div class="container-fluid">

    <div class="row m-2">
        <h1 class="text-center">Сведения о пользователе ${user.name}</h1>
    </div>

    <div class="row">

        <ul class="list-group">
            <li class="list-group-item">Имя: ${user.name}</li>
            <li class="list-group-item">Почта: ${user.email}</li>
            <li class="list-group-item">Имеет статус управления: &nbsp;
                <c:choose>
                    <c:when test="${isManager == true}">
                        Yes
                    </c:when>
                    <c:otherwise>
                        No
                    </c:otherwise>
                </c:choose>
            </li>
        </ul>

        <form action="" method="post">
            <div class="mb-3">
                <button class="btn btn-success" type="submit">Переключить статус управления</button>
            </div>
        </form>

    </div>

</div>
</body>
</html>