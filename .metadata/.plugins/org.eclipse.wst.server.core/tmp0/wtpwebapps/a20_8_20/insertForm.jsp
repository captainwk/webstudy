<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삽입 Form</title>
</head>
<body>
	<form action="insert.jsp" method="get">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="memberid" /></td>
				<td>암호</td>
				<td><input type="text" name="password" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
				<td>이메일</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="submit" value="삽입">
				</td>
			</tr>
		</table>

	</form>
</body>
</html>