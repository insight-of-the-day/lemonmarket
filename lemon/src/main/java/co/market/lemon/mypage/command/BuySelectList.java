package co.market.lemon.mypage.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.MypageVO;
import co.market.lemon.mypage.serviceImpl.MypageServiceImpl;

public class BuySelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MypageVO vo = new MypageVO();
		HttpSession session = request.getSession();
		vo.setMemberName((String) session.getAttribute("name"));
		String memberName = vo.getMemberName();

		MypageService ms = new MypageServiceImpl();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		} 
		
		
		List<MypageVO> buyList = ms.buySelectPaging(memberName, page);
		request.setAttribute("buyList", buyList);	
		
		List<MypageVO> buyList2 = ms.buySelectList(memberName);
		request.setAttribute("buyList2", buyList2);	
		
		return "mypage/buySelectList";
	}

}
