<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	//DB에서 id 에 해당하는 사람의 패스워드를 가져온다 수행.
	String dbid = "hong";		//db에서 가져왔음
	String dbpwd = "1234";		//db에서 가져왔음
	String dbname = "홍길동";		//db에서 가져왔음
	
	if(id.equals(dbid) && pwd.equals(pwd)) {
		session.setAttribute("s_Name", dbname);	//세션정보를 서버에 셋팅
		session.setAttribute("s_Id", dbid);
		/* session.invalidate(Integer.valueOf(30)); */
		response.sendRedirect("index.jsp");		//초기화면으로 이동
	} else {
		response.sendRedirect("login.jsp");		//로그인 페이지로 이동
}
%>
