package kr.or.ddit.json;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

//데이터를 JSON 문자열로 응답하는 서블릿 

@WebServlet("/JSONServlet.do")
public class JSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		//응답을 HTML형식으로 할때의 ContentType설정
		//response.setContentType("text/html; charset=utf-8");
		
		//응답을 JSON으로 할 때의 contentType설정 
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out= response.getWriter();
		
		//문자열 데이터1 
		String str= "안녕하세요";
		
		//배열데이터2
		int[] arr= {100,200,400,500,600};
		
		//객체 데이터 
		SampleVO sam= new SampleVO(100,"이순신");
		
		//List형 데이터 (Collection데이터)
		ArrayList<SampleVO>samList= new ArrayList<>();
		samList.add(new SampleVO(11, "홍길동"));
		samList.add(new SampleVO(12, "김길동"));
		samList.add(new SampleVO(13, "추길동"));
		samList.add(new SampleVO(14, "마길동"));
		samList.add(new SampleVO(15, "최길동"));
//----------------------------------------------------------------------------------------------------
		
		Gson gson = new Gson();
		//gson 라이브러리를 이용하여 데이터를 JSON문자열로 반환한다. 1 
		String jsonStr= gson.toJson(str); //문자열 데이터변환 
		//배열2
		String jsonArr= gson.toJson(arr);
		
		String jsonObj=gson.toJson(sam);
		
		String jsonList= gson.toJson(samList); //list객체 데이터 변환

		//응답 데이터 출력하기 ==> 클라이언트로 보내기 
		//out.write(jsonStr);
		out.write(jsonArr);
		//out.write(jsonObj);
		//out.write(jsonList);
		
		out.flush();
		out.close();
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
