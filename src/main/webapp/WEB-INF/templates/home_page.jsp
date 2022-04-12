<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <jsp:include page="sections/head.jsp">
        <jsp:param name="titleName" value="Home page"/>
    </jsp:include>
<body>
<div class="container-fluid">
    <jsp:include page="sections/navbar.jsp"/>

    <div class="row m-2">
        <h1 class="text-center">Отели
        <c:if test="${not empty param.country}">
            in ${param.country}
        </c:if>
        </h1>
    </div>

    <!-- SEARCH COMPONENT START -->
        <div class="row">
            <form action="" class="card card-sm border-light" method="get">
                <div class="card-body row no-gutters align-items-center">
                    <div class="col-auto">
                        <i class="fas fa-search h4 text-body"></i>
                    </div>
                    <div class="col">
                        <label>
                            <select class="form-select" name="country">
                                <c:forEach items="${countries}" var="country">
                                    <option value="${country.name}">${country.name}</option>
                                </c:forEach>
                            </select>
                        </label>
                    </div>
                    <div class="col-auto">
                        <button class="btn btn-lg btn-success" type="submit">Поиск</button>
                    </div>
                </div>
            </form>
        </div>
    <!-- SEARCH COMPONENT END -->

    <div class="row">

        <c:choose>
            <c:when test="${empty hotels}">
                <h4>Нет отелей</h4>
            </c:when>
            <c:otherwise>
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
                                <a href="<c:url value="/book/${hotel.id}"/>"
                                   class="btn btn-outline-secondary btn-sm">Забронировать номер в гостинице</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
</div>
</body>
</html>