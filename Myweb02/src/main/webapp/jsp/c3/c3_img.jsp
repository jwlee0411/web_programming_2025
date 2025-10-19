<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>BTS Music Video</title>
    <style>
        table {
            border-collapse: collapse;
            border: 2px double orange;
            margin: auto;
            text-align: center;


        }
        th, td {
            border: 2px double orange;
            padding: 10px;
        }
        th {
            background-color: #f9f9f9;
        }
        h1 {
            text-align: center;
        }
        img {
            width: 200px;
            height: 200px;
        }
        .btn {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<h1>bts Music Video</h1>
<form action="selectMV.jsp" method="post">
    <table>
        <tr>
            <th>select</th>
            <th>subject</th>
            <th>album</th>
        </tr>
        <tr>
            <td><input type="radio" name="mv" value="Boy with Luv"></td>
            <td>
                <img src="image1.jpg" alt="image 1"><br>
                image 1
            </td>
            <td>Boy with Luv</td>
        </tr>
        <tr>
            <td><input type="radio" name="mv" value="Dynamite"></td>
            <td>
                <img src="image2.jpg" alt="image 2"><br>
                image 2
            </td>
            <td>Dynamite</td>
        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="선택" class="btn">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
