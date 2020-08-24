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
	//post방식으로 했을때 이 구문을 구현해줘야 한글이 나옴 
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mem" class="glory.member"></jsp:useBean>
<jsp:setProperty property="*" name="mem"/> <!-- 별을 치면 넘어오는것 다 셋팅 -->
<%-- 
<jsp:setProperty property="id" name="mem"/>
<jsp:setProperty property="name" name="mem"/>
<jsp:setProperty property="email" name="mem"/>
<jsp:setProperty property="address" name="mem"/> 
--%>
당신의 이름은 <jsp:getProperty property="name" name="mem"/>이군요<br/>
당신의 주소는 <jsp:getProperty property="address" name="mem"/>이군요<br/>
</body>
</html>