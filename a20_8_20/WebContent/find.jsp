<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>find</title>
</head>
<body>
<% 
	String key = request.getParameter("key");
	String word = request.getParameter("word");
	
	String driver="oracle.jdbc.OracleDriver";	
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "system";
	String pwd="123456";
	//select * from member where name = 'ȫ�浿';
	//String sql = "select * from member where " + key + "='" + word+"'";
	//select * from member where name like '%ȫ%';
	String sql = "select * from member where " + key + " like '%" + word + "%'";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	Class.forName(driver);
	conn=DriverManager.getConnection(url, user, pwd);
	pstmt = conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
%>
<h1>�˻����</h1>
<table border="1">
	<tr><td>���̵�</td><td>��й�ȣ</td><td>�̸�</td><td>�̸���</td></tr>
	<%
		while(rs.next()) {
	%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
	</tr>
	<% }%>
</table>
</body>
</html>