<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! // 변수 선언 
	String name;
	int kor, eng, mat;
	int tot;
	double avg;
	char grd;
%>
<%! // 메서드 선언
	void computeSungJuk() {
		 tot = kor + eng + mat;
		 avg = (double) tot / 3;
	}
%>
<% // 코드 실행 -> ! x
	name = "혜교";
	kor = 91;
	eng = 87;
	mat = 74;
%>
<% // 코드 실행 - 메서드 호출 -> ! x
	computeSungJuk();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>성적 처리 프로그램</title>
	</head>
	<body>
		<h1>성적 처리 프로그램</h1>
		<p>이름: <% out.println(name); %></p>
		<p>국어: <%=kor %></p>
		<p>영어: <%=eng %></p>
		<p>수학: <%=mat %></p>
		<p>총점: <%=tot %></p>
		<p>평균: <%=avg %></p>
	</body>
</html>