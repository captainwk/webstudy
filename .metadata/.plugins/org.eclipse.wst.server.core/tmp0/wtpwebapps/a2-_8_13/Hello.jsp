<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date"%>  <!--Date클래스를 사용하기 위해 import시키기 (@는 디렉티브라고 함)-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
현재 시각:
<%	//스크립트 밋
	Date x = new Date();
	out.println(x);	//system이 아님 
%>
<br/>
<%=x %>	<!-- JSP 스크립트 표현식 -->
</body>
</html>