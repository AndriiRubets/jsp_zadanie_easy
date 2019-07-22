<%@ page import="model.Author" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Publisher" %><%--
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
        <th style="width: 100px;">Name</th>
        <th style="width: 100px;">Address</th>
    </tr>
    <% List<Publisher> publishers = (List<Publisher>) request.getAttribute("publisherList");
        for (int i = 0; i < publishers.size(); i++) {
            Publisher p = publishers.get(i);

            out.print("<tr>");
            out.print("<td>" + p.getId() + "</td>");
            out.print("<td>" + p.getName() + "</td>");
            out.print("<td>" + p.getAddress() + "</td>");
            out.print("<td>" +
                    "<a href=\"/published/remove?publishedId=" + p.getId() + "\">Remove</a>" +
                    "</td>");
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>
