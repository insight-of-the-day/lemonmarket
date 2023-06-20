package co.market.lemon.product.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

//@MultipartConfig(
//		// location="/tmp",
//		fileSizeThreshold=1024*1024,
//		maxFileSize=1024*1024*10,
//		maxRequestSize=1024*1024*10*10
//	)
//@WebServlet("/utils/fileUpload")
public class ProductInsert implements Command {
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		String realPath = request.getServletContext().getRealPath("attach");

		// 위 경로의 디렉토리가 존재하지 않으면 새로 생성
		File dir = new File(realPath);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		// 파일크기 제한 설정 (15mb)
		int sizeLimit = 15 * 1024 * 1024;

		// MultipartRequest 객체를 생성하면 파일 업로드 수행
		 MultipartRequest multpartRequest = 
				 new MultipartRequest(request, realPath, sizeLimit, "utf-8",
					new DefaultFileRenamePolicy());

//		// 업로드한 파일명 가져오기
//		String fileName = multpartRequest.getFilesystemName("file");


		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
//		HashMap<String, String> map = new HashMap<>();

//		
//		FileUpload f=new FileUpload();
//		String dir="attach";
//		map=f.upload(request, response, dir);
//		
		
		
//		System.out.println(multpartRequest.getParameter("productCategory"));
//		System.out.println(multpartRequest.getParameter("productInfo"));
//		System.out.println(multpartRequest.getParameter("productWriter"));
//		System.out.println(multpartRequest.getParameter("productTitle"));
//		System.out.println(Integer.valueOf(multpartRequest.getParameter("productPrice")));
//		System.out.println(multpartRequest.getParameter("productSubject"));
//		System.out.println(multpartRequest.getOriginalFileName("pfile"));
//		System.out.println(realPath);


		
		
		vo.setProductCategory(multpartRequest.getParameter("productCategory"));
		vo.setProductInfo(multpartRequest.getParameter("productInfo"));
		vo.setProductWriter(multpartRequest.getParameter("productWriter"));
		vo.setProductTitle(multpartRequest.getParameter("productTitle"));
		vo.setProductPrice(Integer.valueOf(multpartRequest.getParameter("productPrice")));
		vo.setProductSubject(multpartRequest.getParameter("productSubject"));
		vo.setProductImg(multpartRequest.getOriginalFileName("pfile"));
		vo.setProductImgDir(realPath);
		
		
		
		int n = ps.productInsert(vo);
		
		if (n != 0)
			request.setAttribute("message", "제품 등록이 완료되었습니다.");
		else
			request.setAttribute("message", "제품 등록에 실패했습니다.");

		return "product/productMessage";
	}

}