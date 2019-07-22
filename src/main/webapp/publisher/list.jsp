<%@ page import="model.Author" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Wydawnictwo" %><%--
  Created by IntelliJ IDEA.
  User: ar
  Date: 21.07.2019
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Publisher List</title>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<table>
    <tr>
        <th style="width: 100px;">ID</th>
        <th style="width: 100px;">Nazwa</th>
        <th style="width: 100px;">Adres</th>
    </tr>
    <% List<Wydawnictwo> wydawnictwos = (List<Wydawnictwo>) request.getAttribute("publisherList");
        for (int i = 0; i < wydawnictwos.size(); i++) {
            Wydawnictwo s = wydawnictwos.get(i);

            out.print("<tr>");
            out.print("<td>" + s.getId() + "</td>");
            out.print("<td>" + s.getNazwa() + "</td>");
            out.print("<td>" + s.getNazwa() + "</td>");
            out.print("<td>" +
                    "<a href=\"/published/remove?publishedId=" + s.getId() + "\">Remove</a>" +
                    "</td>");
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>
