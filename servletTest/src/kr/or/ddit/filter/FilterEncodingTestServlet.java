package kr.or.ddit.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/filterEncodingTestServlet.do")
public class FilterEncodingTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("userName");
		
		System.out.println("name ==>"+name);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		
		out.println("<html><head><meta charset='utf-8'></head>");
		out.println("<body>");
		out.println("<h1>당신이 입력한 이름은"+name+"입니다.");
		out.println("</body></html>");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
