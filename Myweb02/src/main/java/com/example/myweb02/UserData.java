package com.example.myweb02;
public class UserData {

    //은닉-캡슐화
    private String id;
    private String password;
    private String email;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPassword() {
        return password;
    }

    public UserData(String id, String password, String email) {
        this.id = id;
        this.password = password;
        this.email = email;
    }


    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }

}