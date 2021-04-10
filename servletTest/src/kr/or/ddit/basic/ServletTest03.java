package kr.or.ddit.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
 	-서블릿의 동작방식에 대하여..
 	1. 사용자(클라이언트)가 URL을 클릭하면 HTTP Request를  Servlet Container로 전송(요청)한다.
 	
 	2. 컨테이너는 web.xml에 정의된 url패턴을 확인하면 어느 서블릿을 통해서 처리해야 할 지를 검색한다. 
 		(로딩이 안된 경우에는 로딩을 한다. 이 때 init()메서드가 호출된다)
 		(Servlet버전 3.0이상에서는 애노테이션(@WebServlet)으로 URL패턴을 설정할수있다. )
 		
 	3.Servlet Container는 요청을 처리할 개별 쓰레드 객체를 생성하여 해당 서블릿 객체의 
 		service()메서드를 호출한다.
 		(이때, HttpServletRequest객체와 HttpServletResponse객체를 파라미터로 넘겨준다.)
 		
    4. service()메서드는 요청 메서드 타입을 체크 하여 적절한 메서드를 호출한다. 
     (doGet(), doPost(), doPut(),doDelete()등...)
     
    5. 요청 처리가  완료되면 HttpServletRequest객체와 HttpServletResponse객체는 소멸된다.
    
    6. 컨테이너로 부터 서블릿이 제거되는 경우에는 destro()메서드가 호출된다. 
 	
*/

@WebServlet("/servletTest03.do")
public class ServletTest03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
		System.out.println("Servlet:"+this.getServletName()
									+"에서 init()메서드를 호출합니다.");
	}	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service()메서드 시작...");
		
		//GET방식과 POST방식에 맞는 메서드 호출하기 
		
		//방법 1==> HttpServlet의 service()메소드로 위임하기  
		super.service(req, resp);
		/*
		//방법2 ==> 클라이언트의 전송방식(GET,POST등)을 구분해서 직접메서드호출
		String method= req.getMethod();
		System.out.println("method=>"+method);
		if("get".equals(method)) {
			this.doGet(req, resp);
		}else {
			this.doPost(req, resp);
		}*/
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet()메서드 시작....");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<html><head><meta charset='utf-8'>"
				+ "</head></body><h1>doGet()메서드 처리내용 </h1></body></html>");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost()메서드 시작....");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<html><head><meta charset='utf-8'></head>"
				+ "</body><h1>doPost()메서드 처리한 내용 입니333다</h1></body></html>");
		
	}
	@Override
	public void destroy() {
		System.out.println("Servlet : "+this.getServletName()+"에서 destroy()메서드를 ***호출합니다");
		
	}
}
