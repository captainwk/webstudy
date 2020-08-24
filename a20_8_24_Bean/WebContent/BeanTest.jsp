<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%--자바형태의 객체 생성
	user u = new user();
	u.setFirstname("홍");
	u.setLastname("길동");
<%= u.getFirstname() %>
<%= u.getLastname() %>
 --%>

<!-- id: 객체명이고 ,class: new한것과 같은 효과  -->
<jsp:useBean id = "u" class="glory.user" scope="page"></jsp:useBean>
<!-- glory.user user = new glory.user() -->

	<jsp:setProperty property="firstname" name="u" value="홍"/> <!-- u.firstname -->
	<jsp:setProperty property="lastname" name="u" value="길동"/> <!-- u.lastname -->

당신의 이름= <jsp:getProperty property="firstname" name="u"/>
<jsp:getProperty property="lastname" name="u"/>
</body>
</html>