<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            text-align: center;
            margin-top: 100px;
        }
        form {
            background: #fff;
            padding: 20px;
            display: inline-block;
            border-radius: 8px;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
        }
        input[type="text"] {
            padding: 5px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            margin-top: 10px;
            padding: 6px 15px;
            border: none;
            background: #4CAF50;
            color: white;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
<form action="c4_bmiResult.jsp">
    <h2>BMI 계산기</h2>
    신장 : <input type="text" name="height" size="10"/> cm<br/>
    체중 : <input type="text" name="weight" size="10"/> kg<br/>
    <input type="submit" value="제출"/>
</form>
</body>