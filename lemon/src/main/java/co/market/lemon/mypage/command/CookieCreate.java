package co.market.lemon.mypage.command;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.product.service.ProductVO;

public class CookieCreate{

	public void exec(HttpServletRequest request, HttpServletResponse response) {
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.parseInt(request.getParameter("productId")));
		
		//쿠키에 상품정보 저장
		Cookie productCookie = new Cookie("productCId"+vo.getProductId(), String.valueOf(vo.getProductId()));
		productCookie.setPath("/");
		productCookie.setMaxAge(24*60*60);
		response.addCookie(productCookie);
		//기존에 동일한 쿠키 이름이면 대체됨 -> 번호 붙이기 "productCId"+vo.getProductId()
		
	}	

}
