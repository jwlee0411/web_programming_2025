<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-10-27
  Time: 오전 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="user" type="com.example.myweb02.UserData" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
    id <jsp:getProperty name="user" property="id"/>
    비밀번호 <jsp:getProperty name="user" property="password"/>
    이메일 <jsp:getProperty name="user" property="email"/>
</body>
</html>
