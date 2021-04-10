package kr.or.ddit.cookie;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//쿠키를 추가하는 서블릿
@WebServlet("/cookieAddServlet.do")
public class CookieAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		
		//Cookie를 저장하는 방법 및 순서
		//1. Cookie객체를 생성한다. ==> '쿠키변수'와'쿠키값'은 문자열로 지정한다.
		//형식) Cookie cookie변수= new Cookie("쿠키변수","쿠키값");
		//		==> 쿠키 값을 한글로 사용할경우에는 URLEncoder.encode()메서드로
		//			인코딩한 후에 사용한다. 
		//'쿠키변수'가 중복되면 나중에 저장한 값으로 변경된다
		
		Cookie nameCookie= new Cookie("name",URLEncoder.encode("홍길동","utf-8"));
		Cookie ageCookie= new Cookie("age","27");
		Cookie addrCookie= new Cookie("addr","Daejeon");
		
		//2. Cookie의 속성을 설정한다. 
		// cookie변수.setPath("경로"); ==> 쿠키가 적용될 경로를 지정한다.(지정한 경로와 그 하위 경로에서 사용가능)
		// cookie변수.setMaxAge("유지시간"); ==> 단위:초 
		// cookie변수.setDomain("도메인명"); ==> 적용할 도메인명을 지정한다. 
		// cookie변수.setSecure("보안여부"); ==> 보안여부(true:적용, false:미적용)
		
		//3. response객체를 이용해서 쿠키를 웹브라우저에 보내면 
		//웹브라우저가 이 쿠키를 받아서 저장한다.  
		//형식) response객체.addCookie(1번에서 만든 cookie객체 )
		
		
		response.addCookie(nameCookie);
		response.addCookie(ageCookie);
		response.addCookie(addrCookie);
		
		out.println("<html><head><meta charset='utf-8'>");
		out.println("<title>Cookie연습 </title></head>");
		out.println("<body>");

		out.println("<h2>Cookie 데이터가 저장되었습니다.</h2><br><br>");
		out.println("<a href ='"+request.getContextPath()+"/02/cookieTest.jsp'>시작문서로 이동하기</a>");
		
		
		out.println("</body>");
		out.println("</html>");
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
