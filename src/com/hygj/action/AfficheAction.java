package com.hygj.action;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;

import com.hygj.bean.Affiche;


import com.hygj.service.AfficheService;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Namespace(value="/")
@Action
@Results(value={
	@Result(name="foradd",location="/WEB-INF/jsp/affiche/affiche_add.jsp"),
	@Result(name="add",location="/WEB-INF/jsp/home.jsp"),
	
})
public class AfficheAction implements ModelDriven<Affiche> {
	
	private Affiche affiche=new Affiche();
	@Resource
	private AfficheService afficheService=null;
	//////////////////////////////////////////////////////////////
	     
       private static final int BUFFER_SIZE=16*1024;
	    private File upload;   
	    private String uploadFileName;   
	    private String uploadContentType;
	    private String savepath;
	    

		public File getUpload() {
			return upload;
		}



		public void setUpload(File upload) {
			this.upload = upload;
		}



		public String getUploadFileName() {
			return uploadFileName;
		}



		public void setUploadFileName(String uploadFileName) {
			this.uploadFileName = uploadFileName;
		}



		public String getUploadContentType() {
			return uploadContentType;
		}



		public void setUploadContentType(String uploadContentType) {
			this.uploadContentType = uploadContentType;
		}



		public String getSavepath() {
			return savepath;
		}



		public void setSavepath(String savepath) {
			this.savepath = savepath;
		}



		public static int getBufferSize() {
			return BUFFER_SIZE;
		}
        
		private static void copy(File src,File dst){
			InputStream in=null;
			OutputStream out=null;
			try{
				in=new BufferedInputStream(new FileInputStream(src),BUFFER_SIZE);
				out=new BufferedOutputStream(new FileOutputStream(dst),BUFFER_SIZE);
			    byte[] buffer=new byte[BUFFER_SIZE];
			    int len=0;
			    while((len=in.read(buffer))>0){
			    	out.write(buffer,0,len);
			    }
			}catch(Exception e){
				e.printStackTrace();
			}
			finally{
				if(null!=in){
					try{
						in.close();
					}catch(Exception e){
						e.printStackTrace();
					}
				}
				if(null!=out){
					try{
						out.close();
					}catch(Exception e){
						e.printStackTrace();
					}
				}
			}
		}


	//////////////////////////////////////////////////
	public AfficheService getAfficheService() {
		return afficheService;
	}



	public void setAfficheService(AfficheService afficheService) {
		this.afficheService = afficheService;
	}



	public Affiche getModel() {
		// TODO Auto-generated method stub
		return affiche;
	}
	
	public String foradd()throws Exception{
		
		
		return "foradd";
		
	}
	
	public String add()throws Exception{
		       String dstpath=ServletActionContext.getServletContext().getRealPath("upload")
		    		   +"/"+this.getUploadFileName();
		       String pic="upload/"+this.getUploadFileName();
		       String content=ServletActionContext.getRequest().getParameter("editor");
		       File dstFile=new File(dstpath);
		       copy(this.upload,dstFile); 
		       afficheService.add(affiche, content, pic);
		       return "add";   
		    }   
		  




}
