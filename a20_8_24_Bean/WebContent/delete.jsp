<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, javax.sql.*, javax.naming.*" %>
<%@page import="javax.naming.InitialContext"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	DataSource ds = null;	//javax.sql안에 있는 문법
	//ResultSet rs = null;
	String sql = "delete from member";
	try{
		Context ctx=new InitialContext();	//초기화(server.xml) //javax.naming안에 있는 문법
		ds = (DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");	//DataSource로 다운캐스트  // jdbc/myoracle은 server.xml에서 확인
		conn=ds.getConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		//out.print("삭제 성공");
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		conn.close();
	}
	//response.sendRedirect("select.jsp");
%>
<!-- response.sendRedirect("select.jsp?id=999"); 이문법은 id 정보를 보낼수 있지만 정보가 URL에 노출됨, 해당페이지로 이동한다. -->
<!--forward로 id를 실어가는법  : 정보가 노출되지 않는다, 해당페이지를 불러온다.-->
<jsp:forward page="select.jsp">	
	<jsp:param name="id" value="999" /> 
</jsp:forward>

<%-- <!-- result로 값보내어 확인해보기 -->
<jsp:forward page="result.jsp">	
	<jsp:param name="id" value="999" /> 
</jsp:forward>
 --%>


</body>
</html>