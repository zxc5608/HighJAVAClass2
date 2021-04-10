package kr.or.ddit.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/sessionDeleteServlet.do")
public class SessionDeleteSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Session삭제하기
		
		//1. 세션 객체구하기
		HttpSession session = request.getSession();
		
		//2. 세션값을 개별적으로 삭제하기
		// 형식) Session 객체.removeAttribute("삭제할key값");
		// 		==> 세션에 저장된 데이터들 중에서 지정할 'key'값과 같은 Session값이 삭제된다.
		//session.removeAttribute("testSession");
		
		//3. 세션전체 삭제하기 
		// 형식) session객체.invaldate(); 
		//==> 세션 자체가 삭제된다. 
		session.invalidate();
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		 out.println("<html><head><meta charset='utf-8'");
		 out.println("<title>Session 연습 </title></head>");
		 out.println("<body>");
		 
		 out.println("<h2>Session데이터가 삭제되었습니다</h2><br><br>");
		 out.println("<a href='"+request.getContextPath()+"/03/sessionTest.jsp'>시작문서로 이동</a>");
		 
		 
		 out.println("</body>");
		 out.println("</html>");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
