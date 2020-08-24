<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<%-- 
<% 	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>
<%=name %><%=id %><%=pwd %> 
--%>
<jsp:useBean id="log" class="glory.login"></jsp:useBean>
<jsp:setProperty property="name" name="log"/>
<jsp:setProperty property="id" name="log"/>
<jsp:setProperty property="pwd" name="log"/>

<%
	if(!log.checkId()) out.print("로그인 실패");
	else out.print("로그인성공");
%>
<jsp:getProperty property="name" name="log"/>
<jsp:getProperty property="id" name="log"/>
<jsp:getProperty property="pwd" name="log"/>
</body>
</html>