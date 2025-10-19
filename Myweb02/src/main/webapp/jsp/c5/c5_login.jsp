<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-29
  Time: 오전 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        label{
            display: block;

            padding: 10px;
        }
        label span{
            width: 200px;
            text-align: right;
        }

        input:focus {
            transform: scale(1.1);   /* 1.1배 확대 */
            color: green;           /* 입력 텍스트 색상 초록 */
            outline: none;          /* 기본 테두리 제거 (선택사항) */
            border: 2px solid green; /* 테두리 강조 (선택사항) */
            transition: all 0.2s ease-in-out; /* 부드럽게 변환 */
        }
    </style>
</head>
<body>
<form action="c5_login_ok.jsp" method="post">
    <label>
        <span>E-Mail</span> : <input type="email" name="email" placeholder="aaa@bbb.com"/><br/>
    </label>
    <label>
        <span>Password</span> : <input type="password" name="pw" placeholder="password"/><br/>



    </label>

    <input type="submit" value="Login"/>
</form>
</body>
</html>
