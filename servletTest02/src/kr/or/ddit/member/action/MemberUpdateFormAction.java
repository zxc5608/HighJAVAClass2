package kr.or.ddit.member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.web.IAction;

public class MemberUpdateFormAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String mem_id = request.getParameter("mem_id");
		
		IMemberService service = MemberServiceImpl.getInstance();
		
		MemberVO memVo = service.getMember(mem_id);
		
		request.setAttribute("memberVo", memVo);
		
		return "/member/memberUpdateForm.jsp";
	}

}
