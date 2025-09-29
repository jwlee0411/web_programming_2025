<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-29
  Time: 오후 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("name", "AAA");
    session.setAttribute("foods", new String[]{"apple", "banana", "cat"});


        %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <a href="c5_sessionConfirm.jsp">세션어쩌고</a>
</body>
</html>
