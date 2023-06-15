package co.market.lemon.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class ProductDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.valueOf("productId"));

		int n = ps.productDelete(vo);

		if (n != 0)
			request.setAttribute("message", "게시글이 삭제 되었습니다.");
		else
			request.setAttribute("message", "게시글 삭제에 실패했습니다.");

		return null;
	}

}
