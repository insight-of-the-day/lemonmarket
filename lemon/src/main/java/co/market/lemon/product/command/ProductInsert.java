package co.market.lemon.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class ProductInsert implements Command {

	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setProductCategory(request.getParameter("productCategory"));
		vo.setProductInfo(request.getParameter("productInfo"));
		vo.setProductWriter(request.getParameter("productWriter"));
		vo.setProductTitle(request.getParameter("productTitle"));
		vo.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
		vo.setProductSubject(request.getParameter("productSubject"));
		vo.setProductState(request.getParameter("productState"));
		int n = ps.productInsert(vo);
		
		if (n != 0)
			request.setAttribute("message", "게시글 등록 완료되었습니다.");
		else
			request.setAttribute("message", "게시글 등록 실패했습니다.");

		return "product/productMessage";
	}

}
