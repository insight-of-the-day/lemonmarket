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

public class ProductUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String realPath = request.getServletContext().getRealPath("attach");

		// 위 경로의 디렉토리가 존재하지 않으면 새로 생성
		File dir = new File(realPath);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		// 파일크기 제한 설정 (15mb)
		int sizeLimit = 15 * 1024 * 1024;

		// MultipartRequest 객체를 생성하면 파일 업로드 수행
		MultipartRequest multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8",
				new DefaultFileRenamePolicy());

		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		vo.setProductId(Integer.valueOf(multpartRequest.getParameter("productId")));
		vo.setProductCategory(multpartRequest.getParameter("productCategory"));
		vo.setProductInfo(multpartRequest.getParameter("productInfo"));
		vo.setProductWriter(multpartRequest.getParameter("productWriter"));
		vo.setProductTitle(multpartRequest.getParameter("productTitle"));
		vo.setProductPrice(Integer.valueOf(multpartRequest.getParameter("productPrice")));
		vo.setProductSubject(multpartRequest.getParameter("productSubject"));
		vo.setProductImg1(multpartRequest.getOriginalFileName("pfile"));
		vo.setProductImgDir1(realPath);

		int n = ps.productUpdate(vo);

		if (n != 0)
			request.setAttribute("message", "수정이 완료되었습니다.");
		else
			request.setAttribute("message", "수정에 실패했습니다.");

		return "product/productMessage";
	}

}
