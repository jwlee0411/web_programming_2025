<%--
  Created by IntelliJ IDEA.
  User: leejo
  Date: 2025-10-13
  Time: 오전 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
    String userId = (String) session.getAttribute("userId");
    boolean loggedIn = userId != null;
    String disabled = loggedIn ? "" : "disabled";

%>
<html>
<head>
    <title>BTS 뮤비 선택</title>
    <style>
        table, th, td, tr{
            border: 1px solid orange;
            text-align: center;
        }

        table{
            text-align: center;
            margin: 12px auto;
            border-collapse: collapse;
        }

        h1{
            text-align: center;
            margin-top: 64px;
        }

        .auth{
            position: fixed;
            top: 50px;
            right: 30px;
            display: inline-flex;
            gap: 10px;
            align-items: center;
            background-color: #fff8f0;
            border-radius: 10px;
            padding: 8px 10px;
            font-size: 12px;
        }

        .auth input[type="text"], .auth input[type="password"]{
            width: 90px;
            border-radius: 5px;
            border: 1px solid #ffb45b;
            padding: 4px;
        }

        .auth input[type="submit"]{
            padding: 4px 10px;
            border: 1px solid #ff8a00;
            border-radius: 5px;
            background-color: #ff8a00;
            color: #fff;
            cursor: pointer;
        }

        .auth .tag{
            font-size: 12px;
            color: #666;
        }

        .notice{
            text-align: center;
            color: #666;
            font-size: 12px;
            margin-top: 12px;
        }
        .disabled-area{
            opacity: 0.5;

        }
    </style>
</head>
<body>

    <h1> 명 상 음 악 </h1>

    <div id="mvArea" class="<% if (!loggedIn) { %>disabled-area<% } %>">
        <form id="mvForm" action="login_ok.jsp" method="post">

            <table>
                <tr>
                    <th>select</th>
                    <th>subject</th>
                    <th>album</th>
                </tr>

                <tr>
                    <td class="radio-cell"><input type="radio" name="music" value="1" <%=disabled %> ></td>
                    <td><img src="https://picsum.photos/id/1018/300/200" alt="image1"></td>
                    <td class="album-name">Boy with Luv</td>
                </tr>

                <tr>
                    <td class="radio-cell"><input type="radio" name="music" value="2" <%=disabled %>></td>
                    <td><img src="https://picsum.photos/id/1025/300/200" alt="image2"></td>
                    <td class="album-name">Dynamite</td>
                </tr>
            </table>

            <div class="button-area">
                <button class="select-btn" <%=disabled %>>제출</button>
            </div>
            <% if (!loggedIn) { %>
            <div class="login-text">로그인 후 선택할 수 있습니다.</div>
            <% } %>




        </form>


    </div>




<%--    로그인 페이지--%>
    <div class="auth" id="authbox">
        <% if(!loggedIn) { %>


        <form action="login_ok.jsp" method="post" style="display: inline-flex; gap: 10px; align-items: center;">
            <span class="tag">로그인 필요</span>
            <input type="text" name="id" placeholder="ID">
            <input type="password" name="pw" placeholder="PW">
            <input type="submit" value="로그인">

        </form>
        <%} else {%>
        <script>
            alert("로그인 되었습니다.")

        </script>
        <span class="tag">로그인됨 <strong><%=userId %></strong></span>
        <form action="logout.jsp" method="post" >
            <button type="submit">로그아웃</button>

        </form>
        <% } %>


    </div>


</body>
</html>
