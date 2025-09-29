<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-29
  Time: 오전 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("UTF-8");
    String email = request.getParameter("email");
    String pw = request.getParameter("pw");

    if(email.equals("aaa@bbb.com")) {
        if(pw.equals("1234"))
        {
            response.sendRedirect("c5_welcome.jsp");
        }
        else
        {
            response.sendRedirect("c5_pw_fail.jsp");
        }

    }
    else
    {
        response.sendRedirect("c5_email_fail.jsp");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
