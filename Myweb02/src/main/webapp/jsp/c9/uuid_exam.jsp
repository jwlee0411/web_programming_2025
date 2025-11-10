<%@ page import="java.util.UUID" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-10-13
  Time: 오전 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
   UUID uuid = UUID.randomUUID();
   out.println(uuid +"<br>");
   String[] uu = uuid.toString().split("-");

   out.println(Arrays.toString(uu));


%>