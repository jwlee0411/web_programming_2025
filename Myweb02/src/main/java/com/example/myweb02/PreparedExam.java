package com.example.myweb02;
import java.sql.*;

public class PreparedExam {
    public static void main(String[] args) {

        String uid = "root";
        String upw = "1234";
        String url = "jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC";

        Connection connection = null;
        PreparedStatement statement = null;

        try{
            Class.forName("com.mysql.cj.jdbc.driver");
            connection = DriverManager.getConnection(url, uid, upw);


            String sql = "INSERT INTO member(id, user_pw, name, email) VALUES(?, ?, ?, ?)";
            statement = connection.prepareStatement(sql);

            statement.setString(1, "eee");
            statement.setString(2, "e1234");
            statement.setString(3, "이숙자");
            statement.setString(4, "aaa@aaa.com");

            int n = statement.executeUpdate(sql);
            if(n==1){
                System.out.println("성공");
            }
            else
            {
                System.out.println("실패");
            }

        }catch(Exception e){
            e.printStackTrace();
        }finally {
            try {
                if(statement!=null) statement.close();
                if(connection!=null) connection.close();

            }catch(Exception e){
                e.printStackTrace();
            }
        }

    }


}