package co.market.lemon.heart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.heart.service.HeartService;
import co.market.lemon.heart.service.HeartVO;
import co.market.lemon.heart.serviceImpl.HeartServiceImpl;

public class AddHeart implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HeartService hs = new HeartServiceImpl();
		HeartVO vo = new HeartVO();
		
		HttpSession session = request.getSession();
		vo.setMemberId((String) session.getAttribute("id"));
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));

		int n = hs.addHeart(vo);
	
		if(n != 0) {
			request.setAttribute("message", "관심 상품이 등록되었습니다.");
			return "member/memberMessage";
		} else {
			request.setAttribute("message", "관심 상품 등록이 실패하였습니다.");
			return "member/memberMessage";
		}
		
		
	}

}
