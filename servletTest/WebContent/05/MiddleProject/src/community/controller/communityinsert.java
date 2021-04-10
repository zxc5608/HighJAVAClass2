package community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.communityVO;
import community.service.CommunityServiceImpl;
import community.service.IcommunityService;


@WebServlet("/communityinsert.do")
public class communityinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String title= request.getParameter("title");
		String cont = request.getParameter("cont");
		String ganre=request.getParameter("ganre");
		String writer = request.getParameter("writer");
		
		
		communityVO vo= new communityVO();

		
		vo.setTitle(title);
		vo.setCont(cont);
		vo.setWriter(writer);
		vo.setWriter(writer);
		
		IcommunityService service= CommunityServiceImpl.gerService();
		
		int seq=service.insertcommunity(vo);
		
		request.setAttribute("result", seq);
		
		request.getRequestDispatcher("community/result.jsp").forward(request, response);
		
	}

}
