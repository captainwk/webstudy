<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String checkName = "";
	String checkId = "";
	checkName = (String)session.getAttribute("s_Name");
	if(checkName == null) {
		response.sendRedirect( "./login.jsp");//null이면 login1.jsp로 이동하고 밑의 코드는 실행되지 않음
	} 
	
	checkId = (String)session.getAttribute("s_Id");
%>
<body>
<%=checkName%>님 당신의 아이디는(<%=checkId%>)이군요.  로그인 상태입니다.

<input type="button" value="로그아웃" onclick="location.href= 'logout.jsp'">

</body>
</html>