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
    String email = request.getParameter("id"); // 변수명만 이메일이고 실제로는 id 받아오는 코드입니다
    String pw = request.getParameter("pw");

    if(email.equals("aaa")) {
        if(pw.equals("1111"))
        {
            Cookie aaa = new Cookie("user_id", email);
            aaa.setMaxAge(20);
            response.addCookie(aaa);
            response.sendRedirect("c5_welcome.jsp");
        }
        else
        {

            response.sendRedirect("c5_login.jsp");
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
