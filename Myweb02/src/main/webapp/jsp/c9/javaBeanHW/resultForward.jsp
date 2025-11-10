<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%--  자바빈 참조   (코드를 넣으세요  -->



<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>성적 결과 (Forward 방식)</title>
<style>
  body {
    font-family: 'Noto Sans KR', sans-serif;
    background: linear-gradient(135deg, #dfe9f3 0%, #ffffff 100%);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .result-card {
    background: #fff;
    width: 420px;
    padding: 35px 40px;
    border-radius: 16px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.1);
    text-align: center;
  }
  h2 {
    color: #333;
    margin-bottom: 25px;
  }
  table {
    margin: 0 auto;
    width: 100%;
    border-collapse: collapse;
  }
  th, td {
    padding: 10px;
    font-size: 15px;
    border-bottom: 1px solid #eee;
  }
  th {
    text-align: left;
    color: #555;
  }
  td {
    text-align: right;
    color: #222;
  }
  .grade {
    font-size: 20px;
    font-weight: bold;
    color: #2563eb;
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
  .btn {
    display: block;
    text-align: center;
    background: #3b82f6;
    color: white;
    border: none;
    padding: 12px;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
    text-decoration: none;
  }
  .btn:hover {
    background: #2563eb;
  }
</style>
</head>
<body>
  <div class="result-card">
    <h2>성적 결과 (Forward)</h2>

    <table>  <%--빈곳을 채우세요 -->
      <tr><th>이름</th><td>                                                             </td></tr>
      <tr><th>국어</th><td>                                                              </td></tr>
      <tr><th>영어</th><td>                                                              </td></tr>
      <tr><th>수학</th><td>                                                              </td></tr>
      <tr><th>총점</th><td>                                                              </td></tr>
      <tr><th>평균</th><td>                                                              </td></tr>
      <tr><th>학점</th><td class="grade">                                               </td></tr>
    </table>

     <a href="form.jsp" class="btn">다시 입력하기</a>
    <div class="footer">© JSP Bean 실습 - Forward 방식</div>
  </div>
</body>
</html>