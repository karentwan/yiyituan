package cn.yiyituan.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 上传文件的Action
 * @author wan
 */
@Controller
@Scope("prototype")
public class UploadAction extends ActionSupport{
	
	//封装的文�?
	private File upload;
	//上传文件的类�?
	private String uploadContentType;
	//上传文件�?
	private String uploadFileName;
	//保存的路�?
	private String savePath;
	
	public void setSavePath(String path) {
		this.savePath = path;
	}
	
	private String getSavePath() throws Exception {
		return ServletActionContext.getServletContext()
				.getRealPath(savePath);
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	/**
	 * @throws Exception 
	 * @throws FileNotFoundException 
	 */
	public String execute() throws FileNotFoundException, Exception {
		//文件输出流
		FileOutputStream fos = new FileOutputStream(getSavePath()
				+ "\\" + getUploadFileName());
		FileInputStream fis = new FileInputStream(getUpload());
		byte[] buffer = new byte[1024];
		int len = 0;
		while( (len = fis.read(buffer)) > 0 ) {
			fos.write(buffer, 0, len);
		}
		fis.close();
		fos.close();
		return SUCCESS;
	}
	
}
