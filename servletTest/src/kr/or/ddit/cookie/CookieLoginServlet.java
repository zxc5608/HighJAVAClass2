package kr.or.ddit.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.activation.Repository;


@WebServlet("/cookieLoginServlet.do")
public class CookieLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		
		String id= request.getParameter("userid");  //jsp에있는 데이터를 불러온다. 
		String pass= request.getParameter("pass");
		String checkbox= request.getParameter("chkid");
		
		//쿠키 객체 생성 
		Cookie cookies = new Cookie("id", id);
		
		//체크박스의 체크여부에 따라서 쿠키를 지정하거나 삭제한다. 
		
		if(checkbox!=null) { //체크박스가 체크되면  
		
			response.addCookie(cookies); //쿠키 저장
		
		}else {
			cookies.setMaxAge(0); //쿠키의 유효시간을 0으로 설정하여 쿠키가 삭제되도록 한다. 
			response.addCookie(cookies);
			
		}
		
	 String contextPath=request.getContextPath();
	 
	 //id,pass 의 null 중복체크 ==> 가져온 파라미터 값들의 null값 여부는 반드시 검사하는 것이 좋다
	 if(id!=null && pass!= null) {
		 if("test".equals(id) && "1234".equals(pass)) { //로그인 성공 
			 // cookieMain.jsp로 이동
			 response.sendRedirect(contextPath+"/02/cookieMain.jsp");
			 
		 }else {
			 // cookieLogin.jsp로 이동
			 response.sendRedirect(contextPath+"/02/cookieLogin.jsp");
		 }
	 }
		
		
		

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
