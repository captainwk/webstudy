<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>updateForm</title>
</head>
<body>
<%
	String memberid = request.getParameter("memberid");
	System.out.println(memberid);

%>
<h1>가입회원 명단</h1>
<form action="update.jsp" method="get">
<table border="1">
	<tr><td>아이디</td><td><input type="text" name="memberid" value="<%=memberid  %>"/></td></tr>
	<tr><td>비밀번호</td><td><input type="password" name="password"></td></tr>
	<tr><td>이름</td><td><input type="text" name="name"></td></tr>
	<tr><td>이메일</td><td><input type="text" name="email"></td></tr>
</table>
<input type="submit" value="수정"/>
<input type="reset" value="취소"/>
<input type="button" value="삭제" onclick="location.href='deleteForm.jsp?memberid=<%=memberid %>'"/>
<input type="button" value="목록보기" onclick="location.href='jdbc_select.jsp'"/>
</form>
</body>
</html>