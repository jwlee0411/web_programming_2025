<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-10-27
  Time: 오전 11:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="com.example.myweb02.UserData" scope="request"/>

<jsp:setProperty name="user" property="*"/>
<jsp:forward page="use_bean.jsp"/>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
