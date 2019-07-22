<%@ page import="model.Author" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Book" %><%--
  Created by IntelliJ IDEA.
  User: ar
  Date: 21.07.2019
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book List</title>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<table>
    <tr>
        <th style="width: 100px;">ID</th>
        <th style="width: 100px;">Title</th>
        <th style="width: 100px;">Year Of Manufacture</th>
        <th style="width: 100px;">Type of Book</th>
        <th style="width: 100px;">Pages</th>
        <th style="width: 100px;">Publisher</th>
        <th style="width: 100px;">Author</th>
    </tr>
    <% List<Book> books = (List<Book>) request.getAttribute("bookList");
        for (int i = 0; i < books.size(); i++) {
            Book b = books.get(i);

            out.print("<tr>");
            out.print("<td>" + b.getId() + "</td>");
            out.print("<td>" + b.getTitle() + "</td>");
            out.print("<td>" + b.getYearOfPublished() + "</td>");
            out.print("<td>" + b.getTypeOfBook() + "</td>");
            out.print("<td>" + b.getPages() + "</td>");
            out.print("<td>" +
                    "<a href=\"/publisher/list?publisherId=" + b.getId() + "\">Publisher</a>" +
                    "</td>");
            out.print("<td>" +
                    "<a href=\"/author/list?authorId=" + b.getId() + "\">Author</a>" +
                    "</td>");
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>
