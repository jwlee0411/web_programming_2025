<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
  body{margin:0;font-family:'Pretendard','Nanum Gothic',sans-serif;background:linear-gradient(135deg,#1abc9c,#16a085,#2ecc71);min-height:100vh;display:flex;align-items:center;justify-content:center}
  .card{width:400px;background:#fff;border-radius:16px;box-shadow:0 10px 22px rgba(0,0,0,.18);padding:30px}
  h1{text-align:center;margin:0 0 18px;color:#2c3e50}
  .field{margin-bottom:15px}
  label{display:block;margin-bottom:6px;color:#34495e;font-size:13px}
  input{width:100%;padding:10px 12px;border:1px solid #dfe6e9;border-radius:10px;font-size:14px}
  input:focus{border-color:#3498db;box-shadow:0 0 0 3px rgba(52,152,219,.15)}
  .btn{width:100%;padding:12px;border:0;border-radius:10px;background:#3498db;color:#fff;font-weight:700;font-size:15px;cursor:pointer;margin-top:10px}
  .btn:hover{background:#2980b9}
  .links{text-align:center;margin-top:10px}
  .links a{color:#2980b9;text-decoration:none}
</style>
</head>
<body>
<div class="card">
  <h1>로그인</h1>
  <form action="login_process.jsp" method="post" accept-charset="UTF-8">
    <div class="field">
      <label for="id">아이디</label>
      <input type="text" id="id" name="id" required>
    </div>
    <div class="field">
      <label for="pw">비밀번호</label>
      <input type="password" id="pw" name="user_pw" required>
    </div>
    <button class="btn" type="submit">로그인</button>
  </form>
  <div class="links">
    <a href="join.jsp">회원가입</a> | <a href="main.jsp">메인</a>
  </div>
</div>
</body>
</html>