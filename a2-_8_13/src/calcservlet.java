

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class calcservlet
 */
@WebServlet("/calcservlet")
public class calcservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public calcservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response); //Get방식으로 들어온 것을 Post방식으로 보냄
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num1, num2;
		int result;
		String op;
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out=response.getWriter();
		String s1=request.getParameter("num1");
		String s2=request.getParameter("num2");
		op=request.getParameter("operator");
		
		num1=Integer.valueOf(s1);
		num2=Integer.valueOf(s2);
		calc cal=new calc(num1, num2, op);
		result=cal.getResult();
		
		out.println("<html>");
		out.println("<body>");
		out.println(num1+op+num2+"="+result);
		out.println("</body></html>");
	}
	
	public int calc(int num1, int num2, String op) {
		int result = 0;
		if(op.equals("+")) {
			result=num1+num2;
		} 
		else if(op.equals("-")) {
			result=num1-num2;
		}
		else if(op.equals("*")) {
			result=num1*num2;
		}
		else if(op.equals("/")) {
			result=num1/num2;
		}
		return result;
	}

}
