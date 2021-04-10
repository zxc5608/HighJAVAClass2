package kr.or.ddit.session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/sessionReadServlet.do")
public class SessionReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//저장된 Session 데이터 읽어오기 
		
		//1. 세션 객체 구하기.
		HttpSession session= request.getSession();
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		 out.println("<html><head><meta charset='utf-8'");
		 out.println("<title>Session 연습 </title></head>");
		 out.println("<body>");
		 
		 out.println("<h2>저장된 Session데이터 확인하기</h2><br><br>");
		 out.println("<hr>");
		 
		 out.println("<h3>세션 데이터 1개 확인하기 </h3>");
		 // 2.세션 데이터 읽어오기 
		 // 형식) Session객체.getAttribute("key값");
		 //    ==> 이 메서드의 반환값은 Object형이라 형변환을 해서 사용한다. 
		 
		 String sessionValue= (String) session.getAttribute("testSession");
		 if(sessionValue==null) {
			 out.println("<h3>키값이'testSession'인 세션값이 없습니다. </h3>");
		 }else {
			 out.println("<h3>testSession의 세션값:" + sessionValue + "</h3>");
		 }
		 out.println("<hr>");
		 out.println("<h3>전체 세션 데이터 확인하기 </h3>");
		 //형식) session객체.getAttributeNames();
		 // 	==> session에저장된 모든 세션에 'key값'들을 반환한다. 
		 //		==> 반환값의 자료형은 Enumeration<String> 이다.
		 int cnt=0;
		 Enumeration<String>sessionNames= session.getAttributeNames();
		 
		 out.println("<ul>");
		 while(sessionNames.hasMoreElements()) { //다음데이터가 있는지 검사 
			 cnt++;
			 String sessionKey= sessionNames.nextElement(); //데이터값 가져오기 
			 out.println("<li>"+sessionKey+ ":" +session.getAttribute(sessionKey)+"</li>");
			 
		 }
		 if(cnt==0)out.println("<li>세션 데이터가 하나도 없습니다. </li>");
		 out.println("</ul>");
		 out.println("<h3>기타 세션관련 정보들 확인하기</h3>");
		 
		 
		 //세션 Id==> 세션을 구분하기 위한 고유한 값(서버에 의해 자동 생성된다)
		 out.println("세션  ID:"+ session.getId() +"<br>");
		 
		 //세션생성시간--> 1970년 1월1일 부터 세션이 만들어진 날짜및 시간까지의 경과시간(단위 :밀리세컨드)
		 out.println("세션생성시간:"+session.getCreationTime()+"<br>");
		 
		 
		 //최근 세션 접근시간--> 1970년 1월1일 부터  경과시간(단위 :밀리세컨드)
		 out.println("최근 세션 접근시간 :"+ session.getLastAccessedTime()+"<br>");
		 
		 //세션 유효시간==>'최근 세션 접근 시간' 이후로 '세션 유효시간 '이 경과하면 세션이
		 //자동으로 삭제된다(기본 값 30분)
		 // 세션 유효시간 설정하기 ==> session객체. setMaxInactiveInterval(초단위 시간)
		 out.println("세션의 유효시간 :"+ session.getMaxInactiveInterval()+"<br>");

		 /*
		  	세션 유효시간을 web.xml에 설정하는 방법
		  	<session-config>
		  		<session-timeout>분단위 시간</session-timeout>
		  	</session-config>
		  
		  */
		 out.println("<a href='"+request.getContextPath()+"/03/sessionTest.jsp'>시작문서로 이동</a>");
		 
		 out.println("</body>");
		 out.println("</html>");
		
		//2.
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
