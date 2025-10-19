<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String savedId = ""; // 쿠키 값 저장용 변수

    Cookie[] cookies = request.getCookies();
    if(cookies != null) {
        for(Cookie c : cookies) {
            if("id_remember".equals(c.getName())) {
                savedId = c.getValue(); // 쿠키 값 가져오기
            }
        }
    }
%>
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
<form action="c5_confirm.jsp" method="post">
    <label>
        <span>ID</span> :
        <input type="text" name="id" placeholder="id" value="<%= savedId %>"/>
        <input type="checkbox" name="checkbox" value="1" <%= !"".equals(savedId) ? "checked" : "" %> >ID기억하기<br/>
    </label>
    <label>
        <span>Password</span> :
        <input type="password" name="pw" placeholder="password"/><br/>
    </label>

    <input type="submit" value="Login"/>
</form>
</body>
</html>
