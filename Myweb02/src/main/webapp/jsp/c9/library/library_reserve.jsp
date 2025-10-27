<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // 세션 검사: 로그인 여부 확인
    if (session.getAttribute("ok") == null) {
        response.sendRedirect("basic.jsp");
        return; // redirect 후 아래 코드 실행 방지
    }

    // 좌석 리스트 초기화
    List<String> list = new ArrayList<>();

    // application 영역에 저장된 예약 좌석 불러오기
    if (application.getAttribute("complete") != null) {
        list = (List<String>) application.getAttribute("complete");
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>도서관 좌석 예약</title>
</head>
<body>
<div align="center">
    <h2>도서관 좌석 예약</h2>
    <h4>좌석을 선택 후 예약 버튼을 눌러주세요.</h4>
</div>
<hr>

<form action="library_reserve_check.jsp" method="post">
    <h4 align="center">도서관 좌석 배치도</h4>
    <table align="center" cellspacing="5" cellpadding="5" border="1">
        <tr>
            <td></td>
            <% for(char c='A'; c<='M'; c++) { %>
            <td><%= c %></td>
            <% } %>
        </tr>

        <% for(int i=1; i<=3; i++) { %>
        <tr>
            <td><%= i %></td>
            <% for(char c='A'; c<='M'; c++) {
                String seatId = c + "-" + i;
            %>
            <td align="center">
                <% if (list.contains(seatId)) { %>
                <input type="checkbox" name="seat" value="<%= seatId %>" disabled>
                <% } else { %>
                <input type="checkbox" name="seat" value="<%= seatId %>">
                <% } %>
            </td>
            <% } %>
        </tr>
        <% } %>
    </table>

    <br>
    <div align="center">
        <button type="submit">예약</button>
        <button type="reset">재선택</button>
    </div>
</form>
</body>
</html>
