<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date"%>  <!--DateŬ������ ����ϱ� ���� import��Ű�� (@�� ��Ƽ���� ��)-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
���� �ð�:
<%	//��ũ��Ʈ ��
	Date x = new Date();
	out.println(x);	//system�� �ƴ� 
%>
<br/>
<%=x %>	<!-- JSP ��ũ��Ʈ ǥ���� -->
</body>
</html>