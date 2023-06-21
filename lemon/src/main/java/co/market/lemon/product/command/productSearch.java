package co.market.lemon.product.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class productSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ProductService ps= new ProductServiceImpl();
		ProductVO vo= new ProductVO();
		vo.setProductCategory(request.getParameter("productCategory"));
		vo.setProductTitle(request.getParameter("productTitle"));
		
		List<ProductVO> products=ps.productSearch(vo.getProductTitle(),vo.getProductCategory());
		if(products!=null) {
			request.setAttribute("products", products);
		}else {
			request.setAttribute("message", "알 수 없는 원인으로 인하여 검색에 실패하였습니다");
			return "product/productMessage";
		}
		
		return "product/productSearch";
	}

}
