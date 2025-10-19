<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-29
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Cookie aaa = new Cookie("aaa_cookie", "AAA");
    Cookie bbb = new Cookie("bbb_cookie", "BBB");
    aaa.setMaxAge(20);
    bbb.setMaxAge(10);
    response.addCookie(aaa);
    response.addCookie(bbb);


%>
<html>
<head>
    <title>Title</title>


</head>
<body>
    <a href="c5_cookieMake.jsp">쿠키확인</a>
</body>
</html>
