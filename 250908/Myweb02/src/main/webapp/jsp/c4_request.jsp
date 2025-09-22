<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>폼 입력</title>
    <style>
        .form-box {
            border: 4px solid blue;
            padding: 15px;
            width: 400px;
            font-size: 16px;
        }
        .form-box input, .form-box select {
            margin: 5px;
        }
    </style>
</head>
<body>
<form action="reqesinfor.jsp" method="post">
    <div class="form-box">
        * 이름 :
        <input type="text" name="name"><br><br>

        * 비밀번호 :
        <input type="password" name="password"><br><br>

        * 성별 :
        <input type="radio" name="gender" value="MAN">MAN
        <input type="radio" name="gender" value="WOMAN">WOMAN<br><br>

        * 취미 :
        <input type="checkbox" name="hobby" value="music">음악감상
        <input type="checkbox" name="hobby" value="exercise">운동
        <input type="checkbox" name="hobby" value="reading">독서<br><br>

        * 지역 :
        <select name="region">
            <option value="Seoul">Seoul</option>
            <option value="Busan">Busan</option>
            <option value="Incheon">Incheon</option>
        </select><br><br>

        <input type="submit" value="click">
    </div>
</form>
</body>
</html>
