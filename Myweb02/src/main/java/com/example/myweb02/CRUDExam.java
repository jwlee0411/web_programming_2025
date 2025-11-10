package com.example.myweb02;
import java.sql.*;
import java.util.*;

public class CRUDExam {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String uid = "root";
        String upw = "1234";
        String url = "jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC";
        while (true){
            System.out.println("1. insert");
            System.out.println("2. update");
            System.out.println("3. delete");
            System.out.println("4. select");
            System.out.println("5. exit");
            System.out.print("input : ");
            int input = sc.nextInt();
            switch(input){
                case 1:
                    insertMember(sc, url, uid, upw);
                    break;
                case 2:

            }
        }
    }

    private static void insertMember(Scanner sc, String url, String uid, String upw){
        Connection connection = null;
        PreparedStatement statement = null;

        System.out.print("id : ");
        String id = sc.next();
        System.out.print("pw : ");
        String pw = sc.next();
        System.out.print("name : ");
        String name = sc.next();
        System.out.print("email : ");
        String email = sc.next();

        try{
            Class.forName("com.mysql.cj.jdbc.driver");
            try(connection = DriverManager.getConnection(url, uid, upw);
            statement = connection.createStatement(sql);){

                String sql = "INSERT INTO member(id, user_pw, name, email) VALUES(?, ?, ?, ?)";

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

            }




        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error" + e.getMessage());
        }
    }

    private static void selectMember(Scanner sc, String url, String uid, String upw){
        Connection connection = null;
        PreparedStatement statement = null;

    }

    private static void deleteMember(Scanner sc, String url, String uid, String upw){
        Connection connection = null;
        PreparedStatement statement = null;
        System.out.print("id : ");
        String id = sc.next();
        System.out.print("pw : ");
        String pw = sc.next();
        System.out.print("name : ");
        String name = sc.next();
        System.out.print("email : ");
        String email = sc.next();
        String sql = "delete member where id = ? and user_pw = ? and name = ? and email = ?"

        try{
            Class.forName("com.mysql.cj.jdbc.driver");
            try(connection = DriverManager.getConnection(url, uid, upw);
            statement = connection.createStatement(sql);){

                statement.setString(1, id);
                statement.setString(2, pw);
                statement.setString(3, name);
                statement.setString(4, email);

                int n = statement.executeUpdate(sql);
                if(n==1){
                    System.out.println("성공");
                }
                else
                {
                    System.out.println("실패");
                }

            }




        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error" + e.getMessage());
        }
    }



    private static void updateMember(Scanner sc, String url, String uid, String upw){
        Connection connection = null;
        PreparedStatement statement = null;
        System.out.print("id : ");
        String id = sc.next();
        System.out.print("pw : ");
        String pw = sc.next();
        System.out.print("name : ");
        String name = sc.next();
        System.out.print("email : ");
        String email = sc.next();
        String sql = "update member set user_pw = ?, name = ?, email = ? where id = ?"

        try{
            Class.forName("com.mysql.cj.jdbc.driver");
            try(connection = DriverManager.getConnection(url, uid, upw);
            statement = connection.createStatement(sql);){

                statement.setString(1, id);
                statement.setString(2, pw);
                statement.setString(3, name);
                statement.setString(4, email);

                int n = statement.executeUpdate(sql);
                if(n==1){
                    System.out.println("성공");
                }
                else
                {
                    System.out.println("실패");
                }

            }




        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error" + e.getMessage());
        }
    }


    }

    private static void readMember(Scanner sc, String url, String uid, String upw){
        Connection connection = null;
        PreparedStatement statement = null;

        String sql = "SELECT id, user_pw, name, email FROM member";
        try{
            Class.forName("com.mysql.cj.jdbc.driver");
            try(connection = DriverManager.getConnection(url, uid, upw);
            statement = connection.createStatement(sql);
            ResultSet resultSet = statement.executeQuery()){

               System.out.println("id\t\tpw\t\tname\t\temail");
               boolean hasData = resultSet.next();
               while(hasData){
                   System.out.println(resultSet.getString("id") + "\t" + resultSet.getString("user_pw") + "\t" + resultSet.getString("name") + "\t" + resultSet.getString("email"));
                   hasData = resultSet.next();
               }
            }




        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error" + e.getMessage());
        }
    }
}