package community.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.replyVO;
import community.service.CommunityServiceImpl;
import community.service.IcommunityService;


@WebServlet("/ReplyList.do")
public class ReplyList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		IcommunityService service =CommunityServiceImpl.gerService();
		
		List<replyVO>list= service.listReply();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("community/replyList.jsp").forward(request, response);
		
		
	}

}
