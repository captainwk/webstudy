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
		//pstmt.setString(1, memberid);	//1�� ����ǥ�� �տ��� �޾ƿԴ� memberid ���� �غ���뿡 ����.
		//pstmt.setString(2, password);	//2�� ����ǥ�� �տ��� �޾ƿԴ� password ���� �غ���뿡 ����.
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