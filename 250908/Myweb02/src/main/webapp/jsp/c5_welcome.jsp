<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-29
  Time: 오전 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            background: linear-gradient(120deg, #89f7fe 0%, #66a6ff 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1{
            font-size: 50px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
            animation: fadeIn 5s ease-in-out infinite alternate;
        }
        @keyframes fadeIn{
            0%{
                opacity: 0;
                color: red;
            }
            50%{
                opacity: 0.5;
                color: orange;
            }

            100%{
                opacity: 1;
                color: black;
            }
        }
    </style>
</head>
<body>
    <h1>환영합니다.</h1>
</body>
</html>
