
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String driver="oracle.jdbc.OracleDriver";	
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "system";
	String password="123456";
	String sql = "select * from member";
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	Class.forName(driver);	//외부에 저장된 class 파일(드라이버클래스)을 현재페이지로 가져옴
	conn = DriverManager.getConnection(url, user, password);
	stmt = conn.createStatement(); //빈문장통;
	rs=stmt.executeQuery(sql);		//executeQuery(sql) --> select문장일때
	while(rs.next()){	//다음레코드 
		
	
%>

<%=rs.getString(1) %> &nbsp;&nbsp;
<%=rs.getString(2) %>
<%=rs.getString(3) %>
<%=rs.getString(4) %><br/>
<%}	//while문 중괄호 닫은 것
%>

<%-- <%=rs.getString("memberid") %> &nbsp;&nbsp;
<%=rs.getString("password") %>
<%=rs.getString("name") %>
<%=rs.getString("email") %><br/> --%>
</body>
</html>