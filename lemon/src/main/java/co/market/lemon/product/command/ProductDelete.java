package co.market.lemon.product.command;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class ProductDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ProductService ps=new ProductServiceImpl();
		ProductVO vo=new ProductVO();
		vo.setProductId(Integer.parseInt(request.getParameter("productId")));
		
		int n= ps.productDelete(vo);
		
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies) {
			if(c.getName().equals("productCId" + vo.getProductId())) {
				c.setPath("/");
				c.setMaxAge(0);
				response.addCookie(c);
				break;
			}
		}
		
		if(n>0) {
			request.setAttribute("message", "상품이 삭제되었습니다");
		}else {
			request.setAttribute("message", "실패하였습니다");
		}
		return "member/memberMessage";
	}

}
