<%@ page import="a20_8_20.JDBCDB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc_select첫페이지</title>
</head>
<body>


<h1>가입회원 명단</h1>
<a href="insertForm.jsp">가입  | </a><a href="jdbc_select.jsp">목록보기  | </a><a href="deleteall.jsp">모두삭제</a><br/>
<table border="1">
	<tr>
		<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th>
	</tr>

<%
	
	//String driver="oracle.jdbc.OracleDriver";	
	//String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	//String user = "system";
	//String password="123456";
	String sql = "select * from member"; 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
		
	//컴파일을 자바에서 하기 위해  (속도가 더 빠르다 이게)
	JDBCDB db = JDBCDB.getDB();
	conn = db.conn;
	
	
	String key = request.getParameter("key");
	String word = request.getParameter("word");
	if (key != null)sql = "select * from member where " + key + " like '%" + word + "%'";
	
	
	//Class.forName(driver);	//외부에 저장된 class 파일(드라이버클래스)을 현재페이지로 가져옴
	//conn = DriverManager.getConnection(url, user, password);
	stmt = conn.createStatement(); //빈문장통;
	rs=stmt.executeQuery(sql);		//executeQuery(sql) --> select문장일때
	
	
	
	while(rs.next()){	//다음레코드 
%>
<tr>
	<td><a href="updateForm.jsp?memberid=<%=rs.getString(1)%>"><%=rs.getString(1) %></a></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
</tr>
	<%-- <%=rs.getString("memberid") %> &nbsp;&nbsp;
	<%=rs.getString("password") %>
	<%=rs.getString("name") %>
	<%=rs.getString("email") %><br/> --%>
<%
}	//while문 중괄호 닫은 것
%>

</table>
<form action="" method="get">
	<select name="key">
		<option value="memberid">아이디</option>
		<option value="password">비밀번호</option>
		<option value="name">이름</option>
		<option value="email">이메일</option>
	</select>
	<input type="text" name="word"/>
	<input type="submit" value= "검색"/>
	<input type="reset" value= "취소"/>
</form>

</body>
</html>