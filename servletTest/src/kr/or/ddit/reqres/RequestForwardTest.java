package kr.or.ddit.reqres;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestForwardTest
 */
@WebServlet("/requestForwardTest.do")
public class RequestForwardTest extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("utf-8");
		
		//forward로 넘어올 때 넘겨준 페이지의request객체와 response객체를
		//공유해서 사용할 수있다. 
		
		//요청할때 보내온 데이터 가져오기
		String userName= request.getParameter("username");      //??
		
		//setAttribute()로 설절한 데이터 가져오기 
		String tel= (String) request.getAttribute("tel");
		
		out.println("<html><head><meta charset='utf-8'>");
		out.println("<title>forward연습</title></head>");
		out.println("<body>");
		out.println("<h2>forward 결과</h2>");
		out.println("이름(form데이터):"+userName+"<br>");
		out.println("전화번호:"+tel+"<br>");
		out.println("</body>");
		out.println("</html>");
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
