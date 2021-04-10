package kr.or.ddit.Upload;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;





/*
 -servlet3.0이상에서 파일 업로드를 사용하려면 서블릿에 @MultipartConfig 애노테이션을
 설정해야한다.
 
 -@MultipartConfig 애노테이션의 설정할 변수들
 
 1.fileSizeThreshold ==> 업로드 파일을 서버에서처리할때 임시기억장소(버퍼)를 사용하는데 
  	==> 이 속성에서 지정한 파일크기이하의 파일은 메모리를 사용하고 초과되는 파일은 디스크에 직접사용한다
  	
 2. maxFileSize==> 업로드 파일의 최대 크기를 설정한다.
 
 3. maxRequestSize==> 업로드 파일 데이터가 포함된Multipart/form-data요청의 최대 크기를 설정한다
 
 4. location ==> 파일이 저장될 디렉토리 경로를 설정한다.(생략가능) 
 
 --위의 변수에 설정하는 파일 크기는 byte단위로 설정한다. 
 
 
 */
@WebServlet("/fileUploadServlet.do")
@MultipartConfig(fileSizeThreshold=1024*1024*10, maxFileSize=1024*1024*30, maxRequestSize=1024*1024*50)
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

//파일 업로드는Get방식일 떄 못씀
	private final String UPLOAD_DIR="uploadFiles"; //업로드된 파일이 저장될 폴더명


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사용자가 업로드한 파일이 저장될 서버쪽의 폴더 경로 설정
		String applicationPath="D:/D_Other";
		String uploadPath = applicationPath + File.separator+UPLOAD_DIR;
		//String uploadPath ="D:/D_Other/uploadFiles";
		
		//저장될 폴더가 없으면 새로 생성한다.
		File uploadDir= new File(uploadPath);
		if(!uploadDir.exists()) {
			uploadDir.mkdirs();
		}
		//파일이 아닌 데이터는 getParameter()메서드나 getParameterValues()메서드를 
		//이용해서 구한다
		request.setCharacterEncoding("utf-8");
		String memId= request.getParameter("memid");
		System.out.println("파일이 아닌 데이터 :"+ memId);
		
	//-----------------------------------------------------
		String fileName="";// 파일명이 저장될 변수
		List<FileDetailVO> fileList =new ArrayList<>(); //업로드한 파일 정보가 저장될 
		
		
		/*
		 -servlet 3.0이상에 새롭게 추가된 파일 Upload용 메서드들
		 
		 1. request.getParts(); => Part객체의 컬렉션을 반환한다
		 2. request.getPart("Part이름");=> 지정된 이름을 가진 개별 Part객체를 반환한다. 
		 
		 
		 --Part객체의 구조--
		 1.파일이 아닐경우 
		 --------adsadsadas				==> Part를 구분하는 구분선
		 Content-Disposition :form-data; name= "memid"  ==> 파라미터 명
		 		==> 빈줄
		 a001   ==> 파라미터값
		 
		 2.파일일 경우 
		 --------adsadsadas				==> Part를 구분하는 구분선
		 Content-Disposition :form-data; name= "file1" filename="파일명  " ==> 파라미터 명
		 Content- Type :text/plain ==> 파일종류
		 		==> 빈줄
		 agrdf1234   ==> 파일 내용
		 
		 */
		for(Part part : request.getParts()) {
			fileName = extractFileName(part); //파일명 구하기
			//파일명이 공백("")이면 이것은 파일이 아닌 일반 파라미터라는 의미이다. 
			
			if(!"".equals(fileName)) {
				//1개의 업로드 파일 정보를 저장할 객체 생성 
				FileDetailVO detail= new FileDetailVO();
				
				detail.setFileName(fileName);
				detail.setFileSize((long)Math.ceil(part.getSize()/1024.0));
				
				try {
					part.write(uploadPath+ File.separator+fileName);// 파일 저장하기
					detail.setUploadStatus("Success");
				} catch (IOException e) {
					detail.setUploadStatus("Fail:"+ e.getMessage());
				}
				fileList.add(detail); //파일 정보를 저장한 객체 1개를 List에 추가
				
			}//if문 끝 
			
		}//for문 끝..
		request.setAttribute("memId",memId);
		request.setAttribute("uploadFiles", fileList);
		
		RequestDispatcher rd=
				request.getRequestDispatcher("/05/uploadFiles.jsp");
		rd.forward(request, response);
	}//getPost()메서드 끝.. 
	
	//Part객체에서 파일명을 찾는 메서드  ==> 파일이 아닌 Part일 경우에는 빈문자열("")을 반환한다
	private String extractFileName(Part part) {
		String fileName="";
		String contentDisposition = part.getHeader("Content-Disposition");
		String[] items= contentDisposition.split(";");
		for(String item:items) {
			if(item.trim().startsWith("filename")) {
				//filename="test.txt";
				fileName= item.substring(item.indexOf("=")+2, item.length()-1);
			}
		}
		return fileName;
	}

}
