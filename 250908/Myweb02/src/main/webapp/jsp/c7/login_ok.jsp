<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    // 임의 계정
    String validId = "user";
    String validPw = "1234";

    if (id != null && pw != null && id.equals(validId) && pw.equals(validPw)) {
        session.setAttribute("userId", id);
        response.sendRedirect("login.jsp");
    } else {
%>

<%
    String music = request.getParameter("music");
    if("1".equals(music))
    {
        response.sendRedirect("album1.jsp");
    }
    else if("2".equals(music))
    {
        response.sendRedirect("album2.jsp");
    }
    else
    {%>
    <script>history.back();</script>
    <%} %>

    %>

<script>
    alert("로그인 실패: 아이디 또는 비밀번호가 잘못되었습니다.");
    history.back();
</script>
<%
    }
%>
