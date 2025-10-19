<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-29
  Time: 오전 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie[] cookies = request.getCookies();
    for(Cookie st : cookies)
    {
        String name = st.getName();
        String value = st.getValue();
        out.println(name + " " + value + "<br>");

    }
%>
