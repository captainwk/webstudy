<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    boolean sw=false;
	String message="<h2>설정된 쿠키 정보</h2>";
	Cookie date=null;   //현재날짜저장
	Cookie cnt=null;    //카운트저장
	
	Cookie cook[]=request.getCookies();
	if(cook!=null)	{
		for(int i=0;i<cook.length;i++){
			message+="이름="+cook[i].getName()+"/ 값="+cook[i].getValue()+"<br/>";
			if(cook[i].getName().equals("datecookie")) {
				date=cook[i];

				sw=true;
			}
			else if(cook[i].getName().equals("cntcookie")) {
				cnt=cook[i];
			}
		}
	}
	else {
		message+="사이트 첫 방문을 환형합니다.<br/>";
	}
	
  	String datevalue=String.valueOf(System.currentTimeMillis());
	System.out.println(datevalue);

	if(!sw){  //sw=false인경우 (한번도 방문하지 않음 처음)
		date=new Cookie("datecookie", datevalue);
		date.setMaxAge(365*24*60*60); //유효기간 365일 존재
		date.setPath("/"); //경로설정
		response.addCookie(date);     //클라이언트에 date라는 쿠키가 저장됨
		
		cnt=new Cookie("cntcookie", "1");
		cnt.setMaxAge(365*24*60*60); //유효기간 365일 존재
		cnt.setPath("/");    //경로설정
		response.addCookie(cnt);     //클라이언트에 cnt라는 쿠키가 저장됨
	}
	else {    //sw=true 인경우 2번이상 방문함
		long conv=Long.parseLong(date.getValue());      //날짜값이 길어서 long형
 	    int count=Integer.parseInt(cnt.getValue())+1;   //1씩증가
 	     message+="<hr>마지막방문:" + new Date(conv) + "<br> 방문회수:"+count;	
 	    
 	    date.setValue(datevalue);       //date쿠키객체에 최근변경된 날짜를 값으로 셋팅
		date.setMaxAge(365*24*60*60); //유효기간 365일 존재
		date.setPath("/"); //경로설정
		response.addCookie(date);     //클라이언트에 date라는 쿠키가 저장됨
		
		cnt.setValue(String.valueOf(count));  //cnt쿠키객체에  최신 count(2,3,4)를 셋팅
		cnt.setMaxAge(365*24*60*60); //유효기간 365일 존재
		cnt.setPath("/");    //경로설정
		response.addCookie(cnt);     //클라이언트에 cnt라는 쿠키가 저장됨
 	    
	}
	System.out.println("msg"+message);
%>

<%=message %>
</body>
</html>