<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String userId = (String) session.getAttribute("userId");
    String userName = (String) session.getAttribute("userName");

    if(userId == null)
    {
        response.sendRedirect("login.jsp");
        return ;
    }



%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>환영합니다</title>
<style>
  body{margin:0;font-family:'Pretendard','Nanum Gothic',sans-serif;background:#ecf0f1;display:flex;align-items:center;justify-content:center;min-height:100vh}
  .card{width:400px;background:#fff;border-radius:16px;box-shadow:0 10px 22px rgba(0,0,0,.15);padding:30px;text-align:center}
  h1{color:#2c3e50;margin:0 0 15px}
  .info{color:#34495e;margin-bottom:20px}
  a.btn{display:inline-block;background:#3498db;color:#fff;text-decoration:none;padding:10px 14px;border-radius:9px;margin:5px}
  a.btn:hover{background:#2980b9}
</style>
</head>
<body>
<div class="card">
  <h1>환영합니다, <%= userName %> 님!</h1>
  <p class="info">아이디: <%= userId %></p>
  <a class="btn" href="list.jsp">회원 정보 보기</a>
  <a class="btn" href="logout.jsp">로그아웃</a>
</div>
</body>
</html>