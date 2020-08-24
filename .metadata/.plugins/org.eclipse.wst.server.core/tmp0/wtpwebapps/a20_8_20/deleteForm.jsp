<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String memberid = request.getParameter("memberid");
%>
	<form action="delete.jsp" method="get">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="memberid" value="<%=memberid %>" /></td>
			</tr>
			<tr>
				<td>암호</td>
				<td><input type="text" name="password" /></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="삭제">
				</td>
				<td>
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>

	</form>
</body>
</html>