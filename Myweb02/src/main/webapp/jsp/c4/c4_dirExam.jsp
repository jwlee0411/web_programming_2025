<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-22
  Time: 오전 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    Date date = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 mm월 dd일");
    String dayInfo = dateFormat.format(date);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    오늘은 <%=dayInfo%>입니다.
</body>
</html>
