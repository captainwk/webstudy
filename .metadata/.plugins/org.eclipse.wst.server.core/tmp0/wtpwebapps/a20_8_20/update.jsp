<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%


	String driver="oracle.jdbc.OracleDriver";	
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "system";
	String pwd="123456";
	String sql = "update member set password=?, name= ?, email=? where memberid = ?";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null; 
	
	String memberid = request.getParameter("memberid");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	System.out.println(memberid);
	
	try{
		Class.forName(driver);
		System.out.println("db OK");
		conn=DriverManager.getConnection(url, user, pwd);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);	//1번? 파라메타값을 셋팅
		pstmt.setString(2, name);		//2번? 파라메타값을 셋팅
		pstmt.setString(3, email);		//3번? 파라메타값을 셋팅
		pstmt.setString(4, memberid);	//4번? 파라메타값을 셋팅
		pstmt.executeUpdate();	
	} catch (Exception e) {
		System.out.println(e);
	}
	finally {
		pstmt.close();
		conn.close();
	}
	response.sendRedirect("jdbc_select.jsp");
%>