<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

    String id = request.getParameter("id");
    String pw = request.getParameter("user_pw");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String err = null;

    String uid = "root";
    String upw = "1234";
    String url = "jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC";

    String sql = "INSERT INTO member(id, user_pw, name, email) VALUES (?, ?, ?, ?)";
    boolean success = false;
    try{
        Class.forName("com.mysql.cj.jdbc.driver");
        try(connection = DriverManager.getConnection(url, uid, upw);
        statement = connection.prepareStatement(sql);){

            statement.setString(1, "eee");
            statement.setString(2, "e1234");
            statement.setString(3, "이숙자");
            statement.setString(4, "aaa@aaa.com");

            int n = statement.executeUpdate(sql);
            if(n==1){
                success = true;
                System.out.println("성공");
            }
            else
            {
                System.out.println("실패");
            }

        }




    }catch(Exception e){
        err = e.getMessage();
        e.printStackTrace();
        System.out.println("Error" + e.getMessage());
    }

//코드작성
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
<style>
  body{
    margin:0;
    font-family:'Pretendard','Nanum Gothic',sans-serif;
    background:#ecf0f1;
    display:flex;
    align-items:center;
    justify-content:center;
    min-height:100vh;
  }
  .card{
    width:400px;
    background:#fff;
    border-radius:16px;
    box-shadow:0 10px 22px rgba(0,0,0,.15);
    padding:30px;
    text-align:center;
  }
  h1{margin:0 0 10px;font-size:22px;color:#2c3e50}
  .ok{color:#27ae60;font-weight:700}
  .fail{color:#c0392b;font-weight:700}
  a.btn{
    display:inline-block;
    margin-top:12px;
    background:#3498db;
    color:#fff;
    text-decoration:none;
    padding:10px 14px;
    border-radius:9px;
  }
  a.btn:hover{background:#2980b9}
</style>
</head>

<body>
  <div class="card">
    <h1>회원가입 결과</h1>

    <%   if(success) %>
      <p class="ok"> 회원가입이 완료되었습니다!</p>
      <a class="btn" href="login.jsp">로그인하러 가기</a>
    <% } else { %>
      <p class="fail"> 회원가입에 실패했습니다.</p>
      <% if (err != null) { %>
        <p style="font-size:13px;color:#888;">(오류: <%= err %>)</p>
      <% } %>
      <a class="btn" href="join.jsp">다시 시도하기</a>
    <% } %>

    <br><a class="btn" href="main.jsp">메인으로</a>
  </div>
</body>
</html>