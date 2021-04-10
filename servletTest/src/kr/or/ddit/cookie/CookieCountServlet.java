package kr.or.ddit.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//쿠키 count를 증가하는 서블릿(쿠키변수는 count로 하기로 한다.)
@WebServlet("/cookieCountServlet.do")
public class CookieCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		
		//count라는 쿠키변수가 있는지 검사하기 
		Cookie[] cookies= request.getCookies();
		int count=0;
		
		if(cookies!=null) {
			for(Cookie cookie: cookies) {
				String name= cookie.getName(); //쿠키변수 구하기 
				
				//count라는  쿠키변수가 있으면 (현재 count 값)을 구한다.
				if("count".equals(name)) {   
					String value= cookie.getValue();
					count= Integer.parseInt(value); //정수형으로 변환 					
				}
			}
		}
		count++; 	//count를 증가
		//증가된 count값을 이용하여 새롭게 저장할 Cookie객체 생성 
		Cookie countCookie= 
				new Cookie("count", String.valueOf(count));
		countCookie.setMaxAge(24*60*60); //1일
		response.addCookie(countCookie);
		
		out.println("<html><head><meta charset='utf-8'>");
		out.println("<title>Cookie count 연습 </title></head>");
		out.println("<body>");

		out.println("<h2> 어서오세요. 당신은"+count+"번째 방문 입니다</h2><br><br>");
		
		out.println("<a href ='"+request.getContextPath()+"/cookieCountServlet.do'>카운트증가하기</a><br><br>");
		out.println("<a href ='"+request.getContextPath()+"/02/cookieTest02.jsp'>시작문서로이동</a>");
		
		out.println("</body>");
		out.println("</html>");
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
