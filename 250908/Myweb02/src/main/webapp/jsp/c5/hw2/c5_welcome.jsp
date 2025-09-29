<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-09-29
  Time: 오전 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie[] cookies = request.getCookies();
    int tmp = 0;
    int isLogin = 0;
    for(Cookie st : cookies) {
        String name = st.getName();
        String value = st.getValue();
        if (name.equals("isLogin")) {
            if(value.equals("1"))
            {
                isLogin = 1;
            }
        }

    }

        for(Cookie st : cookies) {
            String name = st.getName();
            String value = st.getValue();
            if (name.equals("user_id")) {
                if(isLogin==0)
                {
                    out.println(value + "님 환영합니다.");
                    out.println("<a href=\"c5_login.jsp\">로그인 페이지 </a>");

                }
                else {
                    out.println("이미 로그인된 사용자입니다.");
                    out.println("<a href=\"c5_login.jsp\">로그인 페이지 </a>");
                }
                tmp++;

            }

        }
        if(tmp < 1) {
            out.println("로그인이 만료되었습니다.\n" +
                    " 다시 로그인 해주세요.\n");
            out.println("<a href=\"c5_login.jsp\">로그인 페이지 </a>");
        }



%>
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
<h1></h1>
</body>
</html>
