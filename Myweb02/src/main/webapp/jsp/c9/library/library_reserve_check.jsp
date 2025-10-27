<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
    List<String> result = new ArrayList<>();

    if (application.getAttribute("complete") != null) {
        result = (List<String>) application.getAttribute("complete");
    }

    // seat 파라미터를 List로 변환
    List<String> reserve = new ArrayList<>(Arrays.asList(request.getParameterValues("seat")));

    List<String> temp = new ArrayList<>();
    int cnt = 0;

    for (String s : reserve) {
        if (result.contains(s)) {
            break;
        } else {
            temp.add(s);
            cnt++;
        }
    }

    if (cnt == reserve.size()) {
        result.addAll(temp); // reserve가 아니라 result에 추가
        application.setAttribute("complete", result);
    }
%>

<html>
<body>
<h2>도서관 좌석 선택 결과</h2>
<p>
    선택한 좌석<br>
    <%
        for (String s : reserve) {
            out.println("[" + s + "]<br>");
        }
    %>가 선택되었습니다.
</p>

<p>
    도서관 좌석 선택 결과 : <%= (cnt == reserve.size()) ? "success" : "fail" %>
    <%
        if (cnt != reserve.size()) {
            out.println("선택 좌석은 예약 불가합니다.");
        }
    %>
</p>

<a href="library_reserve.jsp">좌석 선택하기</a>

</body>
</html>
