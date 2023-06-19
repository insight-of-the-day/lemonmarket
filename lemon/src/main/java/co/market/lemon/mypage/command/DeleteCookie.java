package co.market.lemon.mypage.command;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductVO;

public class DeleteCookie implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.parseInt(request.getParameter("productId")));
		
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies) {
			if(c.getName().equals("productCId" + vo.getProductId())) {
				c.setPath("/");
				c.setMaxAge(0);
				response.addCookie(c);
				break;
			}
		}
		return "recentSelectList.do";
	}

}
