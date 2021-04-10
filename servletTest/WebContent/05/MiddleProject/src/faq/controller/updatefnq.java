package faq.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.fnqVO;
import faq.service.FaqServiceImpl;
import faq.service.IfaqService;


@WebServlet("/updatefnq.do")
public class updatefnq extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*TITLE제목 str
	QU질문 str
	FNQ_NO 번호 int
	ANS str
	 	*/	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String title= request.getParameter("content");
		int seq= Integer.parseInt(request.getParameter("seq"));
		String ans = request.getParameter("reply");
		
		fnqVO vo =new fnqVO();
		vo.setTitle(title);
		vo.setQu(title);
		vo.setFnq_no(seq);
		vo.setAns(ans);
		
		IfaqService service= FaqServiceImpl.getService();
		
		int cnt = service.updateFaq(vo);
		
		request.setAttribute("result", cnt);
		
		request.getRequestDispatcher("faq/result.jsp").forward(request, response);
	}

}
