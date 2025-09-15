<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-15
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table style="border: 1px solid green;">
    <tr style="border: 1px solid green;">
        <th style="border: 1px solid green;"><h1>출력</h1></th>
        <td style="border: 1px solid green;">
            <%
                for(int i=1; i<=5; i++) {
                    for(int j=0; j<i; j++) {
                        out.print("<strong>*</strong>");
                    }
                    out.print("<br>");
                }
            %>
        </td>
    </tr>
</table>

</body>
</html>
