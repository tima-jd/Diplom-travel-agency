<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <jsp:include page="sections/head.jsp">
        <jsp:param name="titleName" value="Forbidden"/>
    </jsp:include>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <span class="display-1 d-block">403</span>
                <div class="mb-4 lead">У вас нет доступа к странице</div>
                <a href="<c:url value="/" />" class="btn btn-link">Назад на главное</a>
            </div>
        </div>
    </div>
</body>
</html>
