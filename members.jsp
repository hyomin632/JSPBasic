<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="url">jdbc:mariadb://bigdata.ce67r0x8wwmd.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>
<fmt:requestEncoding value="UTF-8" />

<c:set var="birth" value="${param.byear}-${param.bmonth}-${param.bday}"></c:set>		
<c:set var="phone" value="${param.phone1}-${param.phone2}-${param.phone3}"></c:set>		

<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" user="${usr}" password="${pwd}" />		

<sql:update dataSource="${mariadb}" var="cnt">
	insert into NMember (userid, passwd, name, birth, gender, email, phone)
	values (?, ?, ?, ?, ?, ?, ?)
	<sql:param value="${param.userid}"></sql:param>
	<sql:param value="${param.passwd}"></sql:param>
	<sql:param value="${param.name}"></sql:param>
	<sql:param value="${birth}"></sql:param>
	<sql:param value="${param.gender}"></sql:param>
	<sql:param value="${param.email}"></sql:param>
	<sql:param value="${phone}"></sql:param>
</sql:update>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
		<h1>회원가입 처리 결과</h1>
		<p><c:if test="${cnt gt 0}">회원가입 성공!</c:if></p>
		
		<p><a href="members2.jsp">가입한 회원 조회</a></p>
	</body>
</html>