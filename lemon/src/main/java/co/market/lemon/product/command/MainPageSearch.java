package co.market.lemon.product.command;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class MainPageSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductTitle(request.getParameter("mainPageSearch"));
		
		List<ProductVO> list = ps.mainPageSearch(vo);
		request.setAttribute("list", list);
		
		return "product/mainPageSearch";
	}

}
