package kr.or.ddit.member.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.web.IAction;

public class MemberIdCheckAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");

		String mem_id = request.getParameter("mem_id");
		IMemberService service = MemberServiceImpl.getInstance();
		
		int cnt = service.getMemberCount(mem_id);
		
		Gson gson = new Gson();
		String result = null;
		
		if(cnt==1){ // 중복되는 경우
			result = gson.toJson("Fail");
		}else{ // 중복되지 않을 경우
			result = gson.toJson("OK");
		}
		
		PrintWriter out = response.getWriter();
		out.println(result);
		response.flushBuffer();
		
		return null;  // Ajax로 호출한 Action객체의 반환값은 null로 한다.
	}

}
