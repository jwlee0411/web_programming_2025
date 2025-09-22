<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%!
    public int getLuckyNumber() {
        return (int)(Math.random() * 10) + 1;
    }
    int count = 0;
%>
<%
    count++;
    int lucky = getLuckyNumber();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>오늘의 행운의 수</title>

</head>
<style>
    body{
        text-align: center;
        margin-top: 100px;
    }
    h1{
        color: blue;
        font-size: 50px;
    }
    div{
        border: 1px solid black;
        padding: 20px;
        width: 400px;
        margin: 20px auto;
        background-color: #f0f0f0;
        border-radius: 10px;

    }
    strong{
        color:crimson;
        font-size: 24px;

    }

</style>
<body>
<h2>오늘의 행운의 수</h2>
<div class="box">
    <div class="inner">
        페이지 누적된 수 : <%= count %> <br>
        새로운 페이지 요청 수 : 1 <br><br>
        <span class="lucky">행운의 수 : <%= lucky %></span>
    </div>
</div>
</body>
</html>
