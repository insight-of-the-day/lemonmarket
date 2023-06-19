package co.market.lemon.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FileDownload {  //파일 경로를 포함해서 넘어온 파일을 다운로드 한다.

	public void fileDown(HttpServletRequest request, HttpServletResponse response, String file) {
		response.setContentType("text/html; charset=utf-8");
		boolean b = true;
		try {
			OutputStream out = response.getOutputStream();
			File f = new File(file);
			String fileName = file.substring(file.lastIndexOf("/")+1);
			response.setHeader("Cache-Control", "no-cache");
			response.addHeader("Content-disposition", "attachment; fileName="+fileName);
			
			@SuppressWarnings("resource")
			FileInputStream fin = new FileInputStream(f);
			while(b) {
				byte[] buffer = new byte[1024*8];
				int count = fin.read(buffer);				
				b = (count == -1)? false : true;
				out.write(buffer,0,count);				
			}
		} catch (IOException e) {
				e.printStackTrace();
		}
		
	}
}
