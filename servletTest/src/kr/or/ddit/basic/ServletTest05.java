package kr.or.ddit.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletTest05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		
		/*
		 	초기화 파라미터 
		 	 - 처음 WAS가 기동될 떄 읽어들이는 파라미터 값들을 초기화 파라미터라고 한다. 
		 	 - '서블릿 초기화 파리미터'와 '컨텍스트 초기화' 파라미터가 있다.
		 	 -  '서블릿 초기화 파라미터'는 해당 서블릿에서만 사용가능하고 
		 	  	'컨텍스트 초기 화 파라미터'는 전체 웹 어플리케이션 영역에서 사용 가능하다.
		 	  	
		 	  	1. 서블릿 초기화 파라미터 
		 	  	==> web.xml에 설정하는 방법과 에너테이션 설정하는 방법 2가지가 있다. 
		 	  	
		 	 

		 */
		//서블릿 초기화 파라미터 값을 구하기
		//방법1 ==> ServletConfig객체를 이용하기 
		ServletConfig config = getServletConfig();
		
		//형식 getInitParameter("파라미터이름")
		//		==> 반환값은 무조건 String형으로 반환된다.
		String adminEmail = config.getInitParameter("AdminEmail");
		
		//방법2) ==> 현재 Servlet객체의 getInitParameter()메서드 이용하기 
		String userName = getInitParameter("userName");
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><meta charset='utf-8'>");
		out.println("<title>초기화 파라미터 연습</title></head>");
		out.println("<body>");
		out.println("<h2>서블릿 초기화 파라미터</h2>");
		out.println("관리자 이메일: "+adminEmail+"<br>");
		out.println("사용자이름 : "+ userName+"<br>");
		
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
