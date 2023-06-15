package co.market.lemon.command;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class ProductInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = (ProductService) new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductCategory(request.getParameter("productCategory"));
		vo.setProductInfo(request.getParameter("productInfo"));
		vo.setProductTitle(request.getParameter("productTitle"));
		vo.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
		vo.setProductSubject(request.getParameter("productSubject"));

		return "product/productMessage";
	}

}
