<%@ page contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="sections/head.jsp">
    <jsp:param name="titleName" value="Management users"/>
</jsp:include>
<body>
<div class="container-fluid">
    <div class="row m-2">
        <h1 class="text-center">Management</h1>
    </div>

    <div class="row">
        <div class="list-group">
            <a  href="<c:url value="/manager"/>"
                class="list-group-item list-group-item-action">
                Manager
            </a>
            <a  href="<c:url value="/user"/>"
                class="list-group-item list-group-item-action">
                User
            </a>
        </div>
    </div>

</div>
</body>
</html>