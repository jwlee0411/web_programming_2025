<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>연락처 테이블</title>
    <style>
        table {
            border-collapse: collapse;
            /*border: 2px solid blue;*/
            border-style: double;
        }
        th, td {
            /*border: 1px solid black;*/
            padding: 8px;
            border-style: double;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th rowspan="2">번호</th>
        <th rowspan="2">이름</th>
        <th colspan="2">연락처</th>
    </tr>
    <tr>
        <th>이메일</th>
        <th>전화번호</th>
    </tr>
    <tr>
        <td>1</td>
        <td>홍길동</td>
        <td>aaa@aaa.com</td>
        <td>010-1234-5678</td>
    </tr>
    <tr>
        <td>2</td>
        <td>이영자</td>
        <td>lee@lee.com</td>
        <td>010-9876-5432</td>
    </tr>
</table>
</body>
</html>
