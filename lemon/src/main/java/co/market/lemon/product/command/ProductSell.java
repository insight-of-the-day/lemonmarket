package co.market.lemon.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class ProductSell implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo = ps.productSelect(vo);
		
		if (vo.getProductState().equals("거래전")){
			vo.setProductBuyer(request.getParameter("productBuyer"));
			vo.setProductState("거래중");
		} else if (vo.getProductState().equals("거래중") && request.getParameter("productKeepGoing").equals("n")){
			vo.setProductBuyer(null);
			vo.setProductState("거래전");
		} else if (vo.getProductState().equals("거래중")){
			vo.setProductState("거래완료");
		}
		ps.productSell(vo);
		
		return "redirect:productSelect.do";
	}

}
