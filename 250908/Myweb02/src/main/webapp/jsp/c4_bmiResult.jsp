<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    // 작성하세요. (요청 파라미터 읽고 BMI 계산 및 상태 판단)
    String heightStr = request.getParameter("height");
    String weightStr = request.getParameter("weight");

    double bmi = 0.0;
    String bmiStr = "";
    String status = "";

    if (heightStr != null && weightStr != null && !heightStr.trim().isEmpty() && !weightStr.trim().isEmpty()) {
        try {
            double height = Double.parseDouble(heightStr.trim());
            double weight = Double.parseDouble(weightStr.trim());

            if (height > 0) {
                double heightM = height / 100.0; // cm -> m
                bmi = weight / (heightM * heightM);
                bmiStr = String.format("%.2f", bmi);
                if (bmi < 18.5) {
                    status = "저체중입니다.";
                } else if (bmi < 23) {
                    status = "정상체중입니다.";
                } else if (bmi < 25) {
                    status = "과체중입니다.";
                } else {
                    status = "비만입니다.";
                }
            } else {
                status = "키는 0보다 커야 합니다.";
            }
        } catch (NumberFormatException e) {
            status = "입력 오류";
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BMI 결과</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            text-align: center;
            margin-top: 100px;
        }
        .result-box {
            background: #fff;
            padding: 25px;
            display: inline-block;
            border-radius: 8px;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
        }
        .bmi-value {
            font-size: 22px;
            font-weight: bold;
            color: #2e7d32;
        }
        .status {
            margin-top: 10px;
            font-size: 18px;
            color: #444;
        }
    </style>
</head>
<body>
<div class="result-box">
    <h1>비만도 측정 (BMI 지수)</h1>
    <div class="bmi-value">BMI 지수 :    <%= bmiStr %>    </div>
    <hr/>
    <div class="status">
        <%= status %>
    </div>
</div>
</body>
</html>
