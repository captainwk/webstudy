
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
<h1>가입회원 명단</h1>
<a href="insertForm.jsp">가입  | </a><a href="jdbc_select.jsp">목록보기  | </a><a href="deleteall.jsp">모두삭제</a><br/>
<table border="1">
	<tr>
		<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th>
	</tr>

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
<tr>
	<td><a href="updateForm.jsp"><%=rs.getString(1) %></a></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
</tr>
<%
}	//while문 중괄호 닫은 것
%>

</table>


<%-- <%=rs.getString("memberid") %> &nbsp;&nbsp;
<%=rs.getString("password") %>
<%=rs.getString("name") %>
<%=rs.getString("email") %><br/> --%>

</body>
</html>