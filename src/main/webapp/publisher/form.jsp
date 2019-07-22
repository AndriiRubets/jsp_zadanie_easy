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
    <title>Publisher Form</title>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>

<form action="/publisher/add" method="post">
    Name:  <input type="text" name="name"><br>
    Address:  <input type="text" name="address"><br>
    <input type="submit">
</form>
</body>
</html>
