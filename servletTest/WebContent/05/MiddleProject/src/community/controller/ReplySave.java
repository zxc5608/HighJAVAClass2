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

/**
 * Servlet implementation class ReplySace
 */
@WebServlet("/ReplySave.do")
public class ReplySave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//0.ajax요청시 데이터가져오기
		
		HttpSession session = request.getSession();
		memberVO vo1 = (memberVO) session.getAttribute("user");
		String mem_id = vo1.getMem_id();
		int mem_no = vo1.getMem_no();
		
		String cont= request.getParameter("cont");
		int com_no = Integer.parseInt(request.getParameter("com_no"));
		replyVO vo = new replyVO();
		vo.setCom_no(com_no);
		vo.setMem_no(mem_no);
		vo.setWriter(mem_id);
		vo.setCont(cont);
		
		IcommunityService service= CommunityServiceImpl.gerService();
		
		int rnum=service.insertReply(vo);
		
		request.setAttribute("renum", rnum);
		
		request.getRequestDispatcher("community.replySave.jsp").forward(request, response);
	}

}
