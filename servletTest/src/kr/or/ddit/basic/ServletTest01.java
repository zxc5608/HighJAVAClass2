package kr.or.ddit.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
	서블릿이란  ==> 컨테이너(서블릿엔진)에 의해 관리되는 자바 기반 웹 컴포넌트로서,
				동적인 웹 컨텐츠 생성을 가능하게 해준다. 
				
	전체 요청 URL주소 ==> http://localhost:80/servletTest/servletTest01.do
	- http ==> 프로토콜
	- localhost			==> 컴퓨터이름 또는 도메인명 또는 IP주소 
	- 80				==> PORT번호 (웹은 80번이 기본이라 80번일 경우에는 생략가능)
	- /servletTest 	 	==> 컨텍스트패스 (보통 '프로젝트 이름' 으로 지정된다)
	-/servletTest01.do  ==> 서블릿 요청 URL패턴 
	
*/
// 이 예제는 배포 서술자 (DD. Deployment Descriptor  ==> web.xml)를 이용해서 
// 실행할 Servlet을 설정하여 처리하는 예제
public class ServletTest01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

/*
	  이 영역에는 대부분 service()메서드 또는 doGet()메서드나 doPost()메서드를 재정의해서
	  작성한다. 
	 -doGet()메서드나 doPost()메서드는 service()메서드를 통해서 호출된다.
	 -HttpServletRequest객체 ==> 서비스 요청에 관련된 정보 및 메서드를 관리하는 객체
	 -HttpservletResponse객체--> 서브스 응답에 관련된 정보 및 메소드를 관리하는 객체
	  
*/
	//doGet()메서드 --> GET방식의 요청을 처리하느 메서드
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		resp.setCharacterEncoding("utf-8");  // 응답문서의 인코딩 방식지정
		resp.setContentType("text/html; charset=utf-8"); //응답문서의 ContentType지정
		
		
		//처리한 내용을 응답으로 보내기 위해 printWriter객체 생성 
		PrintWriter out =resp.getWriter();
		
		//처리한 내용을 출력한다. ==> 방법1)append()메서드 이용 
		out.append("<html>");
		out.append("<head>");
		out.append("<meta charset='utf-8'>");
		out.append("<title>첫번째 Servlet연습</title>");
		out.append("</head>");

		out.append("<body>");
		out.append("<h1 style='text align: center;'>");
		out.append("안녕하세요 .첫번째 Servlet 프로그램입니다.<br>");
		out.append("servlet at: " +req.getContextPath());
		out.append("</h1>");
		out.append("</body>");
		out.append("</html>");
		
	}
	
	//doPost()메서드 ==> POST 방식의 요청을 처리하는 메서드 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
