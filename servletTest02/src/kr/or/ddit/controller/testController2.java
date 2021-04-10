package kr.or.ddit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.action.MemberListAction;
import kr.or.ddit.web.IAction;

public class testController2 extends HttpServlet {
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
		IAction action =null;

		if (uri == null) {

		} else if ("/member/memberList.do".equals(uri)) {

			action = new MemberListAction();
			viewPage = action.process(request, response);

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
