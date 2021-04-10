package kr.or.ddit.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IAction {

	//이 IAction인터페이스를 implements한 클래스에서 View(jsp문서)를
	//결정하고 해당 View페이지로 redirect할 것인지forward할 것인지
	//결정하는 메서드 
	
	
	public boolean isRedirect();
	
	//IAction 인터페이스를 implements한 클래스의 process메서드를 호출해서 
	//URI를 기준으로 한 하나의 요청처리를 위임하고 View페이지를 반환하는 메서드
	public String process(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException;
	
}
