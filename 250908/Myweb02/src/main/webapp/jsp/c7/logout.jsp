<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    session.invalidate(); // 세션 전체 삭제
%>
<script>
    alert("로그아웃 되었습니다.");
    location.href = "login.jsp"; // 메인 페이지로 리다이렉트
</script>
