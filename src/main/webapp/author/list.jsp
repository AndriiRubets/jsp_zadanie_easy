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
        <th style="width: 100px;">Imie</th>
        <th style="width: 100px;">Nazwisko</th>
        <th style="width: 100px;">Rok Urodzenia</th>
        <th style="width: 100px;">Miejsce Urodzenia</th>
        <th style="width: 100px;">Ksiazki</th>
    </tr>
    <% List<Author> authors = (List<Author>) request.getAttribute("authorList");
        for (int i = 0; i < authors.size(); i++) {
            Author s = authors.get(i);

            out.print("<tr>");
            out.print("<td>" + s.getId() + "</td>");
            out.print("<td>" + s.getImie() + "</td>");
            out.print("<td>" + s.getNazwisko() + "</td>");
            out.print("<td>" + s.getRok_urodzenia() + "</td>");
            out.print("<td>" + s.getMiejsce_urodzenia() + "</td>");
            out.print("<td>" +
                    "<a href=\"/author/remove?studentId=" + s.getId() + "\">Remove</a>" +
                    "</td>");
            out.print("<td>" +
                    "<a href=\"/ksiazka/list?studentId=" + s.getId() + "\">Ksiazki</a>" +
                    "</td>");
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>
