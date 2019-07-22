<%@ page import="model.Author" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Publisher" %>
<%@ page import="model.TypeOfBooks" %><%--
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

<form action="/book/add" method="post">
    <%--TODO: ten formularz jest niekompletny! załączony kod pokazuje jak zrobić pole wyboru autora i publisher'a
            więc ta funkcjonalność powinna działać, brakuje tutaj kilku podstawowych pól klasy Book --%>

    Title of book: <input type="text" name="title"><br>
    Year of Published: <input type="number" min="1800" max="2000" step="1" name="yearOfPublished"><br>
    Select Type of Book: <select name="typeOfBook">

    <%
        for (TypeOfBooks t :
                TypeOfBooks.values()) {%>
    <option value="<%=t%>"><%=t%>
    </option>
    <%
        }
    %>
</select><br>

    Pages: <input type="number" step="1" min="1" name="pages"><br>


    Select Author: <select name="authorId">
        <%
            List<Author> authors = (List<Author>) request.getAttribute("authors");
            for (Author a : authors) {
        %>
        <option value="<%=a.getId()%>"><%=a.getId()%></option>
        <%
            }
        %>
    </select><br>

    Select Publisher: <select name="publisherId">
    <%
        List<Publisher> publishers = (List<Publisher>) request.getAttribute("publishers");
        for (Publisher p : publishers) {
    %>
    <option value="<%=p.getId()%>"><%=p.getId()%>
    </option>
    <%
        }
    %>

</select><br>
    <input type="submit">
</form>
</body>
</html>