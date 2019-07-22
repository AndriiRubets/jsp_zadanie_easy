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
    Imie:  <input type="text" name="imie"><br>
    Nazwisko:  <input type="text" name="nazwisko"><br>
    Rok urodzenia: <input type="number" min="1800" max="2000" step="1" name="rok_urodzenia"><br>
    Miejsce urodzenia:  <input type="text" name="miejsce_urodzenia"><br>
    <input type="submit">
</form>
</body>
</html>
