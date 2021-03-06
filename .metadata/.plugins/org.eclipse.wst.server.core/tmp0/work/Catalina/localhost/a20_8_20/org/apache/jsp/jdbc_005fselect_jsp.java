/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.105
 * Generated at: 2020-08-21 03:54:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import a20_8_20.JDBCDB;
import java.sql.*;

public final class jdbc_005fselect_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>jdbc_select첫페이지</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<h1>가입회원 명단</h1>\r\n");
      out.write("<a href=\"insertForm.jsp\">가입  | </a><a href=\"jdbc_select.jsp\">목록보기  | </a><a href=\"deleteall.jsp\">모두삭제</a><br/>\r\n");
      out.write("<table border=\"1\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\r\n");

	
	//String driver="oracle.jdbc.OracleDriver";	
	//String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	//String user = "system";
	//String password="123456";
	String sql = "select * from member"; 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
		
	//컴파일을 자바에서 하기 위해  (속도가 더 빠르다 이게)
	JDBCDB db = JDBCDB.getDB();
	conn = db.conn;
	
	
	String key = request.getParameter("key");
	String word = request.getParameter("word");
	if (key != null)sql = "select * from member where " + key + " like '%" + word + "%'";
	
	
	//Class.forName(driver);	//외부에 저장된 class 파일(드라이버클래스)을 현재페이지로 가져옴
	//conn = DriverManager.getConnection(url, user, password);
	stmt = conn.createStatement(); //빈문장통;
	rs=stmt.executeQuery(sql);		//executeQuery(sql) --> select문장일때
	
	
	
	while(rs.next()){	//다음레코드 

      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td><a href=\"updateForm.jsp?memberid=");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1) );
      out.write("</a></td>\r\n");
      out.write("\t<td>");
      out.print(rs.getString(2) );
      out.write("</td>\r\n");
      out.write("\t<td>");
      out.print(rs.getString(3) );
      out.write("</td>\r\n");
      out.write("\t<td>");
      out.print(rs.getString(4) );
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\t");
      out.write('\r');
      out.write('\n');

}	//while문 중괄호 닫은 것

      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<form action=\"\" method=\"get\">\r\n");
      out.write("\t<select name=\"key\">\r\n");
      out.write("\t\t<option value=\"memberid\">아이디</option>\r\n");
      out.write("\t\t<option value=\"password\">비밀번호</option>\r\n");
      out.write("\t\t<option value=\"name\">이름</option>\r\n");
      out.write("\t\t<option value=\"email\">이메일</option>\r\n");
      out.write("\t</select>\r\n");
      out.write("\t<input type=\"text\" name=\"word\"/>\r\n");
      out.write("\t<input type=\"submit\" value= \"검색\"/>\r\n");
      out.write("\t<input type=\"reset\" value= \"취소\"/>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
