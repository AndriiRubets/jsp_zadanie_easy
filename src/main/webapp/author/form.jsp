<%--
  Created by IntelliJ IDEA.
  User: ar
  Date: 21.07.2019
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Author Form</title>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>

<form action="/author/add" method="post">
    Firs Name:  <input type="text" name="firstname"><br>
    Surname:  <input type="text" name="surname"><br>
    Year of Birth: <input type="number" min="1800" max="2000" step="1" name="yearOfBirth"><br>
    Place of Birth:  <input type="text" name="placeOfBirth"><br>
    <input type="submit">
</form>
</body>
</html>
