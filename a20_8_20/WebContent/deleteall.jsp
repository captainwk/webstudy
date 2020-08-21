<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%
	String driver="oracle.jdbc.OracleDriver";	
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "system";
	String pwd="123456";
	//String sql = "delete from member where memberid = ? and password = ?";
	String sql = "delete from member";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
%>
<%
	//String memberid=request.getParameter("memberid");
	//String password=request.getParameter("password");
	//System.out.println(memberid);
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, pwd);
		pstmt = conn.prepareStatement(sql);
		//pstmt.setString(1, memberid);	//1번 물음표에 앞에서 받아왔던 memberid 값을 준비된통에 대입.
		//pstmt.setString(2, password);	//2번 물음표에 앞에서 받아왔던 password 값을 준비된통에 대입.
		pstmt.executeUpdate();			//executeUpdate() --> insert into, update set, delete from 
	} 
	catch (Exception e){
		System.out.println(e);
	}
	finally {
		pstmt.close();
		conn.close();
	}
	response.sendRedirect("jdbc_select.jsp");
%>