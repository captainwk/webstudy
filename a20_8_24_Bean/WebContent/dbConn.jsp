<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, javax.sql.*, javax.naming.*" %>
<%@page import="javax.naming.InitialContext"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커넥션 풀DBCP</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	DataSource ds = null;	//javax.sql안에 있는 문법
	
	Context ctx=new InitialContext();	//초기화(server.xml) //javax.naming안에 있는 문법
	ds = (DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");	//DataSource로 다운캐스트  // jdbc/myoracle은 server.xml에서 확인
	ds.getConnection();
	//out.print("연결OK");
%>

</body>
</html>