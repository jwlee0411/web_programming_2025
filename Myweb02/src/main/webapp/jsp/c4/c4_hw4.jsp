<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
    // 1~100 사이 난수 생성
    Set<Integer> set = new HashSet<>();
    Random rand = new Random();

    while (set.size() < 7) {
        set.add(rand.nextInt(100) + 1);
    }

    List<Integer> lotto = new ArrayList<>(set);
    Collections.sort(lotto);

    // 6개 + 보너스 번호 분리
    List<Integer> mainNumbers = lotto.subList(0, 6);
    int bonus = lotto.get(6);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lotto 번호 추첨</title>
    <style>
        body {
            text-align: center;
            margin-top: 50px;
        }
        h1 {
            color: red;
        }
        .numbers {
            font-size: 24px;
            color: green;
        }
    </style>
</head>
<body>
<h1>1회 Lotto 당첨번호</h1>
<div class="numbers">
    <%
        for (int i = 0; i < mainNumbers.size(); i++) {
            out.print(mainNumbers.get(i));
            out.flush();
            Thread.sleep(200);
            out.print(" ");
        }
        out.print(" + " + bonus);
    %>
</div>
</body>
</html>
