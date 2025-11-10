<%@ page language="java" contentType="text/html; charset=UTF-8" %>


<%
    // 인증문자 생성 (랜덤 4자리)
    String[] uu = new String[2];
    String code = "";
    for (int i = 0; i < 4; i++) {
        code += (char) ('A' + (int)(Math.random() * 26)); // A~Z 중 랜덤 문자
    }
    uu[1] = code;

    // 세션에 저장 (나중에 basic_check.jsp에서 비교용)
    session.setAttribute("code", uu[1]);
%>
<html>



<body>
<h2>******* 도서관 자리 예약 ********</h2>
<h1>인증문자 : <del><%=uu[1] %></del></h1>
<form action="basic_check.jsp">

    <small>아래에 인증문자를 입력해 주세요.</small><br>
    <input type="text" name="code" size="10" placeholder="인증문자입력">
    <button type="submit">확인</button>
</form>

</body>
</html>