package kr.or.ddit.Upload;

import java.io.Serializable;

public class FileDetailVO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String fileName;
	private long fileSize;
	private String uploadStatus;
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getUploadStatus() {
		return uploadStatus;
	}
	public void setUploadStatus(String uploadStatus) {
		this.uploadStatus = uploadStatus;
	}
	
	
}
