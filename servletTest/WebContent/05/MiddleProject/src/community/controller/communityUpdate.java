package community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibatis.sqlmap.engine.type.IntegerTypeHandler;

import VO.communityVO;
import community.service.CommunityServiceImpl;
import community.service.IcommunityService;


@WebServlet("/communityUpdate.do")
public class communityUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String title= request.getParameter("title");
		String cont = request.getParameter("cont");
		
		int com_no = Integer.parseInt(request.getParameter("com_no"));
		
		communityVO vo= new communityVO();
		
		vo.setTitle("title");
		vo.setCont("cont");
		vo.setCom_no("com_no");
		
		IcommunityService service= CommunityServiceImpl.gerService();
		
		int cnt = service.updatecommunity(vo);
		
		request.setAttribute("result", cnt);
		
		request.getRequestDispatcher("community/result.jsp").forward(request, response);
		
		
	}

}
