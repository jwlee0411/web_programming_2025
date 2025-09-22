<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    public int i;


%>
<%
    int j=0;
    i++;
    j++;



%>
    <!--  표현식으로 대체 -->
    i : <%=i%><br>
    j : <%=j%><br>

    <!-- html주석은 소스보기에서 보입니다. -->
    <% //jsp주석은 소스보기에서 보이지 않습니다. %>
</body>
</html>
