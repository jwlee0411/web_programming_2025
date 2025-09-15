<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>실습 4 (margin, padding)</title>
    <style>
        body {
            border: 0px solid blue;
            width: 600px;
            margin: 30px auto;
            padding: 20px;
        }

        h1 {
            margin: 30px;
        }

        ul {
            font-size: 25px;
            list-style-type: disc;
        }

        li {
            margin: 10px 0;
        }

        div {
            background-color: #87ceeb;
            width: 250px;
            height: 350px;
            border: 2px solid black;
            margin: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        img {
            max-width: 200px;
            margin: 10px;
        }
    </style>
</head>
<body>
<h1>Python 책 소개</h1>
<ul>
    <li>저자 : 아무개</li>
    <li>출판사 : kunkbuk Academy</li>
    <li>가격 : 30,000원</li>
</ul>
<div>
    <img src="https://preview2.hanbit.co.kr/books/jcqd/files/thumb/1.webp?1561509451" alt="혼자 공부하는 파이썬">
</div>
</body>
</html>
