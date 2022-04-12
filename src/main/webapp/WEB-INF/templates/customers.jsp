<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="sections/head.jsp">
    <jsp:param name="titleName" value="Customers"/>
</jsp:include>
<body>
    <div class="container-fluid">

        <jsp:include page="sections/navbar.jsp"/>

        <div class="row m-2">
            <h1 class="text-center">Клиенты</h1>
        </div>

        <div class="row">

            <table class="table table-hover table-bordered">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Имя</th>
                    <th scope="col">Почта</th>
                    <th scope="col">Действия</th>
                </tr>
                <c:forEach items="${customers}" var="customer">
                    <tr>
                        <td>${customer.id}</td>
                        <td>${customer.name}</td>
                        <td>${customer.email}</td>
                        <td>
                            <a href="<c:url value="/customers/${customer.id}"/>"
                               class="btn btn-outline-secondary btn-sm">Просмотр заказов клиентов</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </div>
</body>
</html>