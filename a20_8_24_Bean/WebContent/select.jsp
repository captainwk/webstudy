<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, javax.sql.*, javax.naming.*" %>
<%@page import="javax.naming.InitialContext"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	DataSource ds = null;	//javax.sql안에 있는 문법
	ResultSet rs = null;
	String sql = "select * from member";
	try{
		Context ctx=new InitialContext();	//초기화(server.xml) //javax.naming안에 있는 문법
		ds = (DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");	//DataSource로 다운캐스트  // jdbc/myoracle은 server.xml에서 확인
		conn=ds.getConnection();
		//out.print("연결OK");
		
		pstmt = conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		out.print("<h1>조회결과</h1>");
		while(rs.next())	{
			out.print(rs.getString(1)+"&nbsp;&nbsp;");
			out.print(rs.getString(2)+"&nbsp;&nbsp;");
			out.print(rs.getString(3)+"&nbsp;&nbsp;");
			out.print(rs.getString(4)+"<br>");
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		conn.close();
	}
%>
</body>
</html>