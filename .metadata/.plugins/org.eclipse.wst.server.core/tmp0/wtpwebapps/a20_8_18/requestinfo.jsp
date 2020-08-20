<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>슬라이드65</title>
</head>
<body>
클라이언트IP = <%= request.getRemoteAddr() %><br/>
요청정보길이 = <%= request.getContentLength() %><br/>
요청정보 인코딩 = <%= request.getCharacterEncoding() %><br/>
요청정보 컨텐트타임 = <%= request.getContentType() %><br/>
요청정보 프로토콜 = <%= request.getProtocol() %><br/>
요청정보 전송방식 = <%= request.getMethod() %><br/>
요청정보 URI = <%= request.getRequestURI() %><br/>
서버이름 = <%= request.getServerPort() %><br/>
서버포트 = <%= request.getServletPath() %><br/>
</body>
</html>