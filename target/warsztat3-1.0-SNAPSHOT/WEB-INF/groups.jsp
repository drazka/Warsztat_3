<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>GROUPS</title>
</head>
<body>
<%@include file ="/WEB-INF/header.jsp"%>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
    </tr>

<c:forEach items="${userGroups}" var = "group">

    <tr>

        <td>${group.id}</td>
        <td>${group.name}</td>
        <td><a href="viewGroup?id=${group.id}">Uzytkownicy grupy</a> </td>
    </tr>

</c:forEach>

</table>
<%@include file ="/WEB-INF/footer.jsp"%>
</body>
</html>
