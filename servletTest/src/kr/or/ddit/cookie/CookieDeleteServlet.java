package kr.or.ddit.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//쿠키 정보를 삭제하는 서블릿 예제
@WebServlet("/cookieDeleteServlet.do")
public class CookieDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		
		//저장된 쿠키정보 삭제하기
		//1. 쿠키 데이터의 삭제는 쿠키의 남은수명을 0으로 설정하는 벙법을 사용한다.
		//==> 쿠키의 수명은 쿠키를 저장하는 addCookie()메서드를 호출하기 전에 해당 쿠키객체의 
		//		setMaxAge()메서드를 사용해서 설정한다. 
		//형식) Cookie cookie변수 = new Cookie("쿠키변수","쿠키값");
		//		cookie변수.setMaxAge(시간);  //시간은 초 단위로 지정한다. 
		// 		==> 시간이 0이면 쿠키가 바로 삭제되고,
		//		==> 시간이 음수이면 웹브라우저가 끝날 때 쿠키가 삭제된다. 
		Cookie[] cookieArr=request.getCookies();
		
		out.println("<html><head><meta charset='utf-8'");
		out.println("<title>Cookie연습</title></head>");
		out.println("<body>");
		out.println("<h1>저장된 Cookie데이터 삭제하기 </h2>");
		
		//쿠키가 있는지 검사 
		if(cookieArr==null||cookieArr.length==0) {
			out.println("<h3>저장된 쿠키가 하나도 없습니다.</h3>");
			
		}else {
			for(Cookie cookie: cookieArr) {
				String name= cookie.getName(); //'쿠키변수'구하기
				if("addr".equals(name)) { //삭제할 쿠키변수인지 확인
					//삭제할 '쿠키변수' 를 이용하여  Cookie객체를 생성한다.
					//이 때 '쿠키값'은 아무거나 설정해도 된다. (이유: 어짜피 삭제될 데이터)
					Cookie delCookie= new Cookie("addr", "test");
					delCookie.setMaxAge(0); //유지시간은 0으로 설정
					response.addCookie(delCookie); //삭제할 쿠키를 추가한다. 
					
				}
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
