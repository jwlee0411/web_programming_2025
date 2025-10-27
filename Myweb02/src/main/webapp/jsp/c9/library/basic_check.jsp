<%@ page language="java" contentType="text/html; charset=UTF-8"


%>


<%
    String code = request.getParameter("code");
    String s_code = (String)session.getAttribute("code");

    if(code.equals(s_code)){
        session.setAttribute("ok", true);
        response.sendRedirect("library_reserve.jsp");
    }
    else{

%>

<script>
    alert("인증코드가 일치하지 않습니다. 다시 인증해 주세요.");
    history.back();

</script>


<%

    }
%>