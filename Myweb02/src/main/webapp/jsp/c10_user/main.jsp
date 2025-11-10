<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head><style>
    body {
        margin: 0;
        font-family: 'Pretendard', 'Nanum Gothic', sans-serif;
        background: linear-gradient(135deg, #1abc9c, #16a085, #2ecc71);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .main-box {
        background: rgba(255,255,255,0.97);
        width: 420px;
        padding: 40px 35px;
        border-radius: 20px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        text-align: center;
        transition: transform 0.3s ease;
    }

    .main-box:hover {
        transform: translateY(-4px);
    }

    h1 {
        margin-top: 0;
        font-size: 26px;
        color: #2c3e50;
        letter-spacing: 1px;
    }

    p {
        font-size: 14px;
        color: #555;
        margin-bottom: 30px;
    }

    .menu-btn {
        display: block;
        width: 100%;
        background: #3498db;
        color: white;
        text-decoration: none;
        padding: 13px 0;
        border-radius: 10px;
        margin-bottom: 12px;
        font-size: 15px;
        font-weight: bold;
        letter-spacing: 0.5px;
        transition: 0.25s;
    }

    .menu-btn:hover {
        background: #2980b9;
        transform: scale(1.03);
    }

    .menu-btn:active {
        background: #2471a3;
        transform: scale(1);
    }

    footer {
        text-align: center;
        margin-top: 20px;
        font-size: 12px;
        color: #777;
    }

    .logo {
        width: 70px;
        height: 70px;
        border-radius: 50%;
        background: linear-gradient(135deg, #3498db, #8e44ad);
        color: white;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 24px;
        font-weight: bold;
        margin: 0 auto 20px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

</style>
</head>
<body>

    <div class="main-box">
        <div class="logo">M</div>
        <h1>회원 관리 시스템</h1>
        <p>회원가입, 수정, 삭제, 목록 조회를 연습할 수 있습니다.</p>

        <a href="join.jsp" class="menu-btn">회원가입 (Sign Up)</a>
        <a href="login.jsp" class="menu-btn">로그인 (Login)</a>
        <a href="update.jsp" class="menu-btn">회원정보 수정 (Update)</a>
        <a href="delete.jsp" class="menu-btn">회원 탈퇴 (Delete)</a>
        <a href="list.jsp" class="menu-btn">회원 목록 보기 (Read)</a>

        <footer>© 2025 Web Programming Practice</footer>
    </div>

</body>