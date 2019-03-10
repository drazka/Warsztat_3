<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Users by group</title>
</head>
<body>
<%@include file ="/WEB-INF/header.jsp"%>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
    </tr>

    <c:forEach items="${users}" var = "user">

        <tr>

            <td>${user.id}</td>
            <td>${user.firstName}</td>
        </tr>

    </c:forEach>

</table>
<%@include file ="/WEB-INF/footer.jsp"%>
</body>
</html>
