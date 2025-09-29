<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-15
  Time: 오전 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int a=10, b=100; %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<table style="border: 1px solid green;">
    <tr style="border: 1px solid green;">
        <th style="border: 1px solid green; text-align: center" ><b>출력</b></th>
        <td style="border: 1px solid green;">
            <%
                out.print("     a+b :");
                out.print(a+b);
                out.print("     ");
            %>
        </td>
    </tr>
</table>

</body>
</html>
