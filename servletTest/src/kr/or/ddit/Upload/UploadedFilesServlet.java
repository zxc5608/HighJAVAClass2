package kr.or.ddit.Upload;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//업로드 된 파일들이 저장된 폴더의 모든 파일 목록을 구해오는 서블릿
@WebServlet("/uploadedFilesServlet.do")
public class UploadedFilesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIR="D:/D_Other/uploadFiles";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		File file = new File(UPLOAD_DIR);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//파일이 저장된 폴더의 모든 파일 목록을 구해와서 List에 추가한다. 
		File[] allFiles= file.listFiles();	//전체 파일 목록 가져오기 
		List<FileDetailVO>filelist= new ArrayList<>();
		
		for(File f:allFiles) {
			FileDetailVO fvo= new FileDetailVO();
			fvo.setFileName(f.getName());
			fvo.setFileSize((long)Math.ceil(f.length()/1024.0));
			fvo.setUploadStatus("Successed");
			filelist.add(fvo);
			
			request.setAttribute("uploadFiles", filelist);
			RequestDispatcher rd= request.getRequestDispatcher("/05/allUploadFiles.jsp");
			rd.forward(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
