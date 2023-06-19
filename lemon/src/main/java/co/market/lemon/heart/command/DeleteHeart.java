package co.market.lemon.heart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.heart.service.HeartService;
import co.market.lemon.heart.service.HeartVO;
import co.market.lemon.heart.serviceImpl.HeartServiceImpl;

public class DeleteHeart implements Command {
	//ajax사용으로 필요 없어짐
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HeartService hs = new HeartServiceImpl();
		HeartVO vo = new HeartVO();
		
		HttpSession session = request.getSession();
		vo.setMemberId((String) session.getAttribute("id"));
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));

		int n = hs.deleteHeart(vo);
	
		if(n != 0) {
			request.setAttribute("message", "관심 상품이 해제되었습니다.");
			return "member/memberMessage";
		} else {
			request.setAttribute("message", "관심 상품 삭제가 실패하였습니다.");
			return "member/memberMessage";
		}
	}

}
