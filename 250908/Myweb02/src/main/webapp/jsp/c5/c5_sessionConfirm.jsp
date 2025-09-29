<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-29
  Time: 오후 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String name = (String)session.getAttribute("name");
    String[] foods = (String[])session.getAttribute("foods");
    out.println(name + " "+ Arrays.toString((foods)));


%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
