package co.market.lemon.mypage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.MypageVO;
import co.market.lemon.mypage.serviceImpl.MypageServiceImpl;

public class SellSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {			
		MypageVO vo = new MypageVO();
		HttpSession session = request.getSession();
		vo.setMemberName((String) session.getAttribute("name"));
		String memberName = vo.getMemberName();

		MypageService ms = new MypageServiceImpl();
		List<MypageVO> sellList = new ArrayList<MypageVO>();
		List<MypageVO> sellList2 = new ArrayList<MypageVO>();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		} 
		
		
		sellList = ms.sellSelectPaging(memberName, page);
		request.setAttribute("sellList", sellList);	
		
		sellList2 = ms.sellSelectList(memberName);
		request.setAttribute("sellList2", sellList2);	
		
		int countIng = 0;
		for(MypageVO countVo : sellList2) {
			if(countVo.getProductState().equals("거래중")) {	
				countIng = countIng + 1;
				System.out.println(countIng);
			}
		}
		request.setAttribute("countIng", countIng);
		
		for(MypageVO countVo : sellList2) {
			if(countVo.getProductState().equals("거래안료")) {
				int countDone = 0;
				countDone = countDone + 1;
				request.setAttribute("countDone", countDone);
			}
		}

		return "mypage/sellSelectList";
	}

}
