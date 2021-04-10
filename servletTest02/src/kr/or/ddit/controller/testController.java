package kr.or.ddit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;

public class testController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");

		/*
		 * URL ==> http://localhost/servletTest2/member/memberList.do URI ==>
		 * /servletTest2/member/memberList.do ContextPath ==> /servletTest2
		 * 
		 * 원하는 요청 URl==> /member/memberList.do
		 * 
		 */
		// 사용자의 요청 정보 가져오기
		String uri = request.getRequestURI();

		uri = uri.substring(request.getContextPath().length());

		System.out.println("uri==>" + uri);

		String viewPage = null; // view페이지가 저장될 변수선언

		if (uri == null) {

		} else if ("/member/memberList.do".equals(uri)) {

			// URI에 맞는 작업을 진행한다. (예: 전체 회원정보가져오기)
			IMemberService memService = MemberServiceImpl.getInstance();
			List<MemberVO> memlist = memService.getAllMemberList();

			// 가져온 정보를 Request객체의 setAttribute()메서드를 이용해서 저장한다.
			//==> view페이지로 전달한 데이터를 셋팅한다.
			request.setAttribute("memlist", memlist);

			viewPage = "/member/memberList.jsp"; // view페이지 설정

		} else if ("/member/memberView.do".equals(uri)) {
			// 상세정보

		} else {

		}

		// 해당 view페이지를 포워딩 또는 리다이렉트 한다.
		// ==> /WEB-INF/view/memeber/memberList.jsp
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view" + viewPage);
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
