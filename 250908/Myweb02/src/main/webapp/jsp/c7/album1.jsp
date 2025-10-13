<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-10-13
  Time: 오전 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String userId = (String)session.getAttribute("userId");
    if(userId==null)
    {
        response.sendRedirect("login.jsp");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello</h1>

</body>
</html>
