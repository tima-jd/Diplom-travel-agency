<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="sections/head.jsp">
    <jsp:param name="titleName" value="Hotels"/>
</jsp:include>
<body>
<div class="container-fluid">

    <jsp:include page="sections/navbar.jsp"/>

    <div class="row m-2">
        <h1 class="text-center">Управление гостиницей</h1>
    </div>

    <div class="row mt-4 mb-4">
        <h3>
            <a href="<c:url value="/hotels/new" />" class="btn btn-success btn-lg" >Добавить отель</a>
        </h3>
    </div>

    <div class="row">

        <table class="table table-hover table-bordered">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Имя</th>
                <th scope="col">Описание</th>
                <th scope="col">Страна</th>
                <th scope="col">Действие</th>
            </tr>
            <c:forEach items="${hotels}" var="hotel">
                <tr>
                    <td>${hotel.id}</td>
                    <td>${hotel.name}</td>
                    <td>${hotel.description}</td>
                    <td>${hotel.country}</td>
                    <td>
                        <a href="<c:url value="/rooms/${hotel.id}"/>"
                           class="btn btn-outline-secondary btn-sm">Номера отеля</a>
                        <a href="<c:url value="/hotels/edit/${hotel.id}"/>"
                           class="btn btn-info btn-sm">Изменить</a>
                        <a href="<c:url value="/hotels/delete/${hotel.id}"/>"
                           class="btn btn-danger btn-sm">Удалить</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>
</body>
</html>