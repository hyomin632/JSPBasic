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

<c:set var="hdate" value="${param.hdate1}-${param.hdate2}-${param.hdate3}"></c:set>
<c:set var="phone" value="${param.phone1}-${param.phone2}-${param.phone3}"></c:set>		

<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" user="${usr}" password="${pwd}" />

<sql:update dataSource="${mariadb}" var="cnt">
	insert into EMPLOYEES values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
	<sql:param value="${param.employee_id}"></sql:param>
	<sql:param value="${param.first_name}"></sql:param>
	<sql:param value="${param.last_name}"></sql:param>
	<sql:param value="${param.email}"></sql:param>
	<sql:param value="${phone_number}"></sql:param>
	<sql:param value="${hire_date}"></sql:param>
	<sql:param value="${param.job_id}"></sql:param>
	<sql:param value="${param.salary}"></sql:param>
	<sql:param value="${param.commission_pct}"></sql:param>
	<sql:param value="${param.manager_id}"></sql:param>
	<sql:param value="${param.department_id}"></sql:param>
</sql:update>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>직원 등록 처리 결과</title>
	</head>
	<body>
		<h1>직원 등록 처리 결과</h1>
		<p><c:if test="${cnt gt 0}">직원 등록 완료!></c:if></p>
		
		<p><a href="employees2.jsp">등록된 직원 조회</a></p>
	</body>
</html>