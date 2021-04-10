package kr.or.ddit.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletTest04
 */
@WebServlet(description = "자동으로 생성한 서블릿", urlPatterns = { "/servletTest04" })
public class ServletTest04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 	servlet클래스나 JSP페이지의 환경에 관련된 정보는 javax.servlet.ServletContext
		 	인터페이스 타입의 객체를 이용해서 얻을수있다. 
		 	ServletContext객체는 getServletContext()메서드를 통해서 얻을 수 있다 
		 	
		 	-제공하는 메서드
		 	1. getServerInfo() ==>  Servlet이 속하는 웹서버의 종류 
		 	2. getMajorVersion() ==> 웹 컨테이너가 지원하는 Servlet규격의 메이저 버전
		 	3. getMinorVersion() ==> 마이너 버전
		 */
		ServletContext context = getServletContext(); // ServletContext객체 얻기
		
		String serverInfo= context.getServerInfo();
		int majorVersion= context.getMajorVersion();
		int minorVersion= context.getMinorVersion();
		
		String servletName= getServletName();
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><meta charset='utf-8'>");
		out.println("<title>웹 서버의 정보</title></head>");
		out.println("<body>");
		out.println("웹서버의 종류(ServerInfo):"+serverInfo+"<br>");
		out.printf("ServletName: %s<br>",servletName);
		out.printf("지원하는 Servlet버전: %d,%d<br>", majorVersion,minorVersion);
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
