<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 아이디: abc123, 비밀번호: 987xyz
	// 아이디/비밀번호 일치 => loginOK.jsp로 redirect
	// 아이디/비밀번호 불일치 => loginFail.jsp로 redirect
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	
	if (userid.equals("abc123") && passwd.equals("987xyz"))
		response.sendRedirect("loginOK.jsp");
	else
		response.sendRedirect("loginFail.jsp");
%>
	