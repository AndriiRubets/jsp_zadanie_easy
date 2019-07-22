<%@ page import="model.Author" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ar
  Date: 21.07.2019
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Author List</title>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<table>
    <tr>
        <th style="width: 100px;">ID</th>
        <th style="width: 100px;">Firs Name</th>
        <th style="width: 100px;">Surname</th>
        <th style="width: 100px;">Year of Birth</th>
        <th style="width: 100px;">Place of Birth</th>
        <th style="width: 100px;">REMOVE</th>
        <th style="width: 100px;">Books</th>
    </tr>
    <% List<Author> authors = (List<Author>) request.getAttribute("authorList");
        for (int i = 0; i < authors.size(); i++) {
            Author s = authors.get(i);

            out.print("<tr>");
            out.print("<td>" + s.getId() + "</td>");
            out.print("<td>" + s.getFirstname() + "</td>");
            out.print("<td>" + s.getSurname() + "</td>");
            out.print("<td>" + s.getYearOfBirth() + "</td>");
            out.print("<td>" + s.getPlaceOfBirth() + "</td>");
            out.print("<td>" +
                    "<a href=\"/author/remove?studentId=" + s.getId() + "\">Remove</a>" +
                    "</td>");
            out.print("<td>" +
                    "<a href=\"/book/list?studentId=" + s.getId() + "\">Books</a>" +
                    "</td>");
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>
