<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    // 간단한 입력값 수신 (POST)
    String subject = request.getParameter("subject");
    String content = request.getParameter("content");

    // XSS 간단 방어: null 체크 후 특수문자 치환
    if (subject == null) subject = "";
    if (content == null) content = "";
    String safe = content.replaceAll("&", "&amp;")
            .replaceAll("<", "&lt;")
            .replaceAll(">", "&gt;")
            .replaceAll("\"", "&quot;");
%>
<!doctype html>
<html lang="ko">
<head>
    <title>상담과목 선택 폼</title>
</head>
<body>
<h1>상담과목을 선택하세요</h1>


<form method="post">
    <div class="form-row">
        <label for="subjectSelect">과목 선택:</label>
        <select id="subjectSelect" name="subject" aria-label="과목 선택">
            <option value="Java" <%= "Java".equals(subject) ? "selected" : "" %>>Java</option>
            <option value="Python" <%= "Python".equals(subject) ? "selected" : "" %>>Python</option>
            <option value="C" <%= "C".equals(subject) ? "selected" : "" %>>C</option>

        </select>
    </div>



        <fieldset><legend>상담 내용 입력</legend><textarea id="contentArea" name="content" placeholder="상담할 내용을 입력하세요"><%= content %></textarea></fieldset>


    <div class="actions">
        <button type="submit">제출</button>
    </div>
</form>


</body>
</html>
