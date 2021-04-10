package kr.or.ddit.reqres;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/responseRedirectTest.do")
public class ResponseRedirectTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("utf-8");
		
		String userName= request.getParameter("username");
		//String tel= (String) request.getAttribute("tel");
		String tel= request.getParameter("tel");
		out.println("<html><head><meta charset='utf-8'>");
		out.println("<title>redirect연습</title></head>");
		out.println("<body>");
		out.println("<h2>redirect 결과</h2>");
		out.println("이름(form데이터):"+userName+"<br>");
		out.println("전화번호:"+tel+"<br>");
		out.println("</body>");
		out.println("</html>");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
