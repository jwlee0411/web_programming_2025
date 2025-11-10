<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>성적 입력</title>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background: linear-gradient(135deg, #dfe9f3 0%, #ffffff 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .form-card {
            background: #fff;
            width: 380px;
            padding: 35px 40px;
            border-radius: 16px;
            box-shadow: 0 6px 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #444;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px 12px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: 0.3s;
        }
        input:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 5px rgba(59,130,246,0.3);
            outline: none;
        }
        button {
            margin-top: 25px;
            width: 100%;
            background: #3b82f6;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        button:hover {
            background: #2563eb;
        }
        .footer {
            text-align: center;
            margin-top: 15px;
            color: #888;
            font-size: 13px;
        }
    </style>
</head>
<body>
<form class="form-card" action="resultForward.jsp" method="post">
    <h2>성적 입력 폼</h2>

    <label for="name">이름</label>
    <input type="text" id="name" name="name" placeholder="이름을 입력하세요" required>

    <label for="kor">국어</label>
    <input type="number" id="kor" name="kor" placeholder="0~100" min="0" max="100" required>

    <label for="eng">영어</label>
    <input type="number" id="eng" name="eng" placeholder="0~100" min="0" max="100" required>

    <label for="math">수학</label>
    <input type="number" id="math" name="math" placeholder="0~100" min="0" max="100" required>

    <button type="submit">성적 계산 (Forward 방식)</button>
    <div class="footer">© JSP Bean 실습 - Forward Example</div>
</form>
</body>
</html>