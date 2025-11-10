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

    String sql = "SELECT name FROM member WHERE id = ? and user_pw = ?";

    try{
        Class.forName("com.mysql.cj.jdbc.driver");
        try(connection = DriverManager.getConnection(url, uid, upw);
        statement = connection.createStatement(sql)){
            statement.setString(1, id);
            statement.setString(2, pw);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                name = resultSet.getString("name");
            }



        }




    }catch(Exception e){
        e.printStackTrace();
        System.out.println("Error" + e.getMessage());
    }

    if(name != null)
    {
        session.setAttribute("userId", id);
        session.setAttribute("userName", name);
        response.sendRedirect("welcome.jsp");
    }
    else {
        %>
        <script>
        alert("아이디 / 비밀번호를 확인해주세요.");
        history.back();
        </script>

<%
    }


%>