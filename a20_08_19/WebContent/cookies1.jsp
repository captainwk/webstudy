<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
<%
	Cookie cookie1 = new Cookie("name",URLEncoder.encode("홍길동"));	//디코딩거쳐서 생성
	Cookie cookie2 = new Cookie("jop", "students");						//디코딩없이 생성(디코디없이 한글로하면 에러남)
	
	cookie1.setMaxAge(3*24*60*60); //3일 동안 쿠키가 머무름 
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>
쿠키결과=
<%=URLDecoder.decode(cookie1.getValue())%>	<!-- 디코딩(byte->char) 거쳐서 출력  -->
<%=cookie2.getValue()%>
</body>
</html>