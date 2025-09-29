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
    String email = request.getParameter("id");
    String pw = request.getParameter("pw");
    String checkbox = request.getParameter("checkbox");

    if("aaa".equals(email)) {
        if("1111".equals(pw)) {
            Cookie aaa = new Cookie("user_id", email);
            aaa.setMaxAge(20); // 1시간
            response.addCookie(aaa);

            if(checkbox != null && checkbox.equals("1")) {
                Cookie ccc = new Cookie("id_remember", email);
                ccc.setMaxAge(25); // 7일
                response.addCookie(ccc);
            }

            response.sendRedirect("c5_welcome.jsp");
        } else {
            response.sendRedirect("c5_login.jsp");
        }
    } else {
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
