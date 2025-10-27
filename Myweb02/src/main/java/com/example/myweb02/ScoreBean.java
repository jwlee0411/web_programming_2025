package com.example.bean;

public class StudentBean {
    private String name;
    private int kor;
    private int eng;
    private int math;

    // setter / getter
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public int getKor() { return kor; }
    public void setKor(int kor) { this.kor = kor; }

    public int getEng() { return eng; }
    public void setEng(int eng) { this.eng = eng; }

    public int getMath() { return math; }
    public void setMath(int math) { this.math = math; }

    public int getTotal() { return kor + eng + math; }

    public double getAverage() { return getTotal() / 3.0; }

    public String getGrade() {
        double avg = getAverage();
        if(avg >= 90) return "A";
        else if(avg >= 80) return "B";
        else if(avg >= 70) return "C";
        else if(avg >= 60) return "D";
        else return "F";
    }
}
