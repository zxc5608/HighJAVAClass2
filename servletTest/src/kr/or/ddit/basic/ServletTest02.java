package kr.or.ddit.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 이 예제는 애노테이션 (@WebServlet)을 이용해서 Servlet을 설정하여 처리하는 예제
// 애노테이션 (@WebServlet)은 servlet버전 3.0이상에서 사용할 수 있다.

/*
    @WebServlet애노테이션의 속성들
      1.name : 서블릿의 이름을 설정한다. ( 기본값: 빈문자열(""))
      2.urlPatterns : 서블릿의 URL패턴의 목록을 설정한다.(기본값:빈배열({}))
      		예)urlPatterns="/url1"또는 urlPatterns={"/url1"}==> 패턴이 1개일경우
      		예) urlPatterns={"/url1","/url2"}==> 패턴이 2개이상일 경우
      3. value: urlPatterns와 동일한 기능을 한다
      4.description : 주석 (설명글)을 설정한다.  
 */


@WebServlet(description="애노테이션을 이용한 서블릿 ",urlPatterns= {"/servletTest02.do"})
public class ServletTest02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setCharacterEncoding("utf-8");  // 응답문서의 인코딩 방식지정
		resp.setContentType("text/html; charset=utf-8"); //응답문서의 ContentType지정
		
		
		//처리한 내용을 응답으로 보내기 위해 printWriter객체 생성 
		PrintWriter out =resp.getWriter();
	
		//처리한 내용을 출력한다. ==> 방법2) println()메서드 이용하기
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='utf-8'>");
		out.println("<title>두번째 Servlet 연습 </title>");
		out.println("</head>");
		
		out.println("<body>");
		out.println("<h1 style='text-align:center;'>");
		out.println("<이것은 두번째 Servlet 프로그램입니다 <br>");
		out.println("server at: " +req.getContextPath()+"<br>");
		out.println("<@WebServlet 애너태이션을 이용한 예제입니다>");
		
		out.println("</h1>");
		out.println("</body>");
		out.println("</html>");
		
		
		

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
