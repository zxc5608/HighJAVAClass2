package community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.memberVO;
import VO.replyVO;
import community.service.CommunityServiceImpl;
import community.service.IcommunityService;


@WebServlet("/Replyupdate.do")
public class Replyupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		/*HttpSession session = request.getSession();
		memberVO vo1= (memberVO) session.getAttribute("user");
		int mem_no= vo1.getMem_no();*/
		
		
		int renum =Integer.parseInt(request.getParameter("renum"));
		String cont= request.getParameter("cont");
		
		replyVO vo = new replyVO();
		vo.setRenum(renum);
		vo.setCont(cont);
		vo.setMem_no(1);
		
		System.out.println(renum + " : " + cont);
		
		
		IcommunityService service= CommunityServiceImpl.gerService();
		
		int res= service.updateReply(vo);
		
		request.setAttribute("res", res);
		
		request.getRequestDispatcher("community/update.jsp").forward(request, response);
		
		
	}

}
