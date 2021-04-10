package kr.or.ddit.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 	이 서블릿의 매핑 URL은 '/servletTest08.do'로 하고
 	이 서블릿에 초기화 하는 파라미터로 'start'에는 1, 'end'에는 50을 설정한 후
 	이 초기화 파라미터값을 읽어와 start값 부터 end값까지의 합계를 출력하는 서블릿을 작성하시오.
 	(설정은 web.xml을 이용한다.) 
 */

public class ServletTest08 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		

		
		String start=getInitParameter("start");
		String end= getInitParameter("end");
		
		int start1=Integer.parseInt(start);
		int end1= Integer.parseInt(end);
		
		
		int sum = 0;
		
		for(int i= start1;i<=end1;i++) {
			sum+=i;
		}
		
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><meta charset='utf-8'>");
		out.println("<title>초기화 파라미터 연습</title></head>");
		out.println("<body>");
		out.println("<h2>초기화 파라미터를 이용한 합계구하기</h2>");
		out.println(start+"부터"+end+"까지의 합계"+"<br>");
		
		out.println(sum);
		out.println("</body></html>");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
