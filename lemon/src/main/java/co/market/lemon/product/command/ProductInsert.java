package co.market.lemon.product.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.FileUpload;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class ProductInsert implements Command {

	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		HashMap<String,String>map=new HashMap<>();
		
		FileUpload f=new FileUpload();
		String dir="attach";
		map=f.upload(request, response, dir);
		
		
		vo.setProductCategory(map.get("productCategory"));
		vo.setProductInfo(map.get("productInfo"));
		vo.setProductWriter(map.get("productWriter"));
		vo.setProductTitle(map.get("productTitle"));
		vo.setProductPrice(Integer.valueOf(map.get("productPrice")));
		vo.setProductSubject(map.get("productSubject"));
		vo.setProductImg(map.get("ofile"));
		vo.setProductImgDir(map.get("pfile"));
		
		
		
		int n = ps.productInsert(vo);
		
		if (n != 0)
			request.setAttribute("message", "제품 등록이 완료되었습니다.");
		else
			request.setAttribute("message", "제품 등록에 실패했습니다.");

		return "product/productMessage";
	}

}
