<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>����ȸ�� ����</h1>
<form action="" method="get"></form>
<table border="1">
	<tr><td>���̵�</td><td><input type="text" name="memberid"></td></tr>
	<tr><td>��й�ȣ</td><td><input type="password" name="password"></td></tr>
	<tr><td>�̸�</td><td><input type="text" name="name"></td></tr>
	<tr><td>�̸���</td><td><input type="text" name="email"></td></tr>
</table>
<input type="submit" value="����"/>
<input type="reset" value="���"/>
<input type="button" value="����" onclick="location.href='delete.jsp'"/>
<input type="button" value="��Ϻ���" onclick="location.href='jdbc_select.jsp'"/>

</body>
</html>