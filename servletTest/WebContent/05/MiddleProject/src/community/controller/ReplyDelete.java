package community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.replyVO;
import community.service.CommunityServiceImpl;
import community.service.IcommunityService;


@WebServlet("/ReplyDelete.do")
public class ReplyDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		/*HttpSession session = request.getSession();
		memberVO vo1= (memberVO) session.getAttribute("user");
		int mem_no= vo1.getMem_no();*/
		
		
		int renum= Integer.parseInt(request.getParameter("renum"));
		
		replyVO vo = new replyVO();
		vo.setRenum(renum);
		vo.setMem_no(1);
		
		IcommunityService service= CommunityServiceImpl.gerService();
		
		int res = service.deleteReply(vo);
		
		request.setAttribute("res", res);
		
		request.getRequestDispatcher("community/update.jsp").forward(request, response);
		
	}

}
