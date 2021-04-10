package kr.or.ddit.wrapper;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/wrapperTestServlet.do")
public class WrapperTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String remoteIp=request.getRemoteAddr(); //접속자 ip주소를 구한다.
		System.out.println("접속한 IP주소 :"+ remoteIp);
		
		String memId= request.getParameter("mem_id");
		String memName= request.getParameter("mem_name");
		String memPass= request.getParameter("mem_pass");
		
		System.out.println("ID:"+memId);
		System.out.println("Name:"+memName);
		System.out.println("Pass:"+memPass);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
