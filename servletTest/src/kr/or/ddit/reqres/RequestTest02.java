package kr.or.ddit.reqres;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletTest09
 */
@WebServlet("/servletTest09.do")
public class RequestTest02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		
		String num1= request.getParameter("num1");
		String num2= request.getParameter("num2");
		String cal= request.getParameter("cal");
		
		int Num1=Integer.parseInt(num1);
		int Num2=Integer.parseInt(num2);
		
		
		out.println("<html>");
		out.println("<head><meta charset ='utf-8'><title>계산기 연습</title></head>");
		
		out.println("<body>");
		out.println("<h2>request 테스트 결과 </h2>");
		out.println("<hr>");
		
		out.println("<table border='1'>");
		
		out.println("<tr><td>첫번째숫자</td>");
		out.println("<td>"+num1+"</td></tr>");

		out.println("<tr><td>두번째숫자</td>");
		out.println("<td>"+num2+"</td></tr>");
		
		out.println("<tr><td>연산자</td>");
		out.println("<td>");
		
		int res=0;
		boolean calcOk=true; //계산 성공 여부를 저장할 변수(false면 계산 불능 상태)
		
		switch (cal) {
		
		case "+" : res =Num1 + Num2; break;
		case "-" : res =Num1 - Num2; break;
		case "*" : res =Num1 * Num2; break;
		case "/" :
			if(Num2==0) {
				calcOk=false;
			}else {
				res=Num1 / Num2; break;
			}
			break;
			
		case "%" : res =Num1 % Num2; break;

	
		}
		/*
		if(cal.equals("+")) {
			res = Num1 + Num2;
		}
		else if(cal.equals("-")){
			res = Num1 - Num2;
		}
		else if(cal.equals("*")){
			res = Num1 * Num2;
		}
		else if(cal.equals("/")){
			res = Num1 / Num2;
		}
		else if(cal.equals("%")){
			res = Num1 % Num2;
		}*/
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><meta charset='utf-8'>");
		out.println("<title>계산기 연습</title></head>");
		out.println("<body>");
		out.println("<h2>계산기</h2>");
		//out.println(Num1+cal+Num2+"="+"<br>"+res);
		if(calcOk==true) {
			out.println(res+"<br>");
		}else {
			out.println("계산불능(0으로 나누기)<br>");
		}
		
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
