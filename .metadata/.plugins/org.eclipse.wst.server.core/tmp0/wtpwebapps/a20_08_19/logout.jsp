<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.removeAttribute("s_name");//이름삭제 
session.removeAttribute("s_id"); //id삭제 
session.invalidate();	//세션의 정보 즉시 삭제
response.sendRedirect("index.jsp"); // 
%>