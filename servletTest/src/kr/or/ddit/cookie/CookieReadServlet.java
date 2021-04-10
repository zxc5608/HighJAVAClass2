package kr.or.ddit.cookie;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//저장된 쿠키를 읽어오는 서ㅏ릿
@WebServlet("/cookieReadServlet.do")
public class CookieReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		
		//저장된 쿠키 읽어오는 방법
		//1. 전체 쿠키 정보를 request객체를 통해서 가져온다.
		//		==> 이때 가져온 쿠키 정보들은 배열에 저장된다 . 
		//형식) Cookie[]쿠키 배열변수 =request.getCookie();
		Cookie[] cookieArr= request.getCookies();
		
		out.println("<html><head><meta charset='utf-8'");
		out.println("<title>Cookie연습</title></head>");
		out.println("<body>");
		out.println("<h1>저장된 Cookie데이터 확인하기 </h2>");
		
		//쿠키가 있는지 검사 
		if(cookieArr==null||cookieArr.length==0) {
			out.println("<h3>저장된 쿠키가 하나도 없습니다.</h3>");
			
		}else {
			//2.쿠키 배열에서 해당 쿠키를 구해온다. 
			// ==> 반복문을 이용해서 하나씩 검사한다. 
			for(Cookie cookie : cookieArr) {
				String name= cookie.getName(); // '쿠키변수'를 가져온다
				//String value=cookie.getValue(); // '쿠키값'을 가져온다
				//한글로 저장된 쿠키값은 읽어온후 디코딩해서 사용한다.
				
				
				String value= URLDecoder.decode(cookie.getValue(),"utf-8");
				out.println("쿠키변수 :"+name+"<br>");
				out.println("쿠키변수 :"+value+"<br>");
				out.println("<hr>");
				
			}
		}
		
		out.println("<a href ='"+request.getContextPath()+"/02/cookieTest.jsp'>시작문서로 이동하기</a>");
		
		
		out.println("</body>");
		out.println("</html>");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
