<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- SungJukV2a.html => SungJukV2a.jsp --%>
<%
	// SungJukV2a.html로부터 입력받은 값들을 가져와서 변수에 대입
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	
	int tot = kor + eng + mat;
	double avg = (double) tot / 3;
	String mean = String.format("%.1f", avg);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>성적 처리 프로그램 v2</title>
	</head>
	<body>
		<h1>성적 처리 프로그램</h1>
		<p>이름: <%=name %></p>
		<p>국어: <%=kor %></p>
		<p>영어: <%=eng %></p>
		<p>수학: <%=mat %></p>
		<p>총점: <%=tot %></p>
		<p>평균: <%=mean %></p>
</html>