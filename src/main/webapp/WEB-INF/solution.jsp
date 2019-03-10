<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Solution ${solution.id}</title>
</head>
<body>

<%@include file ="/WEB-INF/header.jsp"%>


        ID: <div>${solution.id}</div>
        CREATED: <div>${solution.created}</div>
        UPDATED: <div>${solution.updated}</td>
        DESC: <div>${solution.description}</div>
        EXERCISE ID: <div>${solution.exercise_id}</div>
        USER ID: <div>${solution.users_id}</div>
        <div><a href="warsztat3/">Main</a> </div>

<%@include file ="/WEB-INF/footer.jsp"%>
</body>
</html>
