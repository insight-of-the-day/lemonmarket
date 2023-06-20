package co.market.lemon.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductVO;

public class ProductUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductVO vo=new ProductVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setProductWriter(request.getParameter("productWriter"));
		
		request.setAttribute("productWriter", vo.getProductWriter());
		request.setAttribute("productId", vo.getProductId());
		return "product/productUpdate";
	}

}
