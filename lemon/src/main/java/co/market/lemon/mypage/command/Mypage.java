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

public class Mypage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MypageVO vo = new MypageVO();
		HttpSession session = request.getSession();
		vo.setMemberName((String) session.getAttribute("name"));
		String memberName = vo.getMemberName();
		
		//판매 거래 카운트
		MypageService ms = new MypageServiceImpl();
		List<MypageVO> sellList = new ArrayList<MypageVO>();

		sellList = ms.sellSelectList(memberName);
		request.setAttribute("sellList", sellList);	
		
		int sellCountIng = 0;
		int sellCountDone = 0;
		for(MypageVO countVo : sellList) {
			switch(countVo.getProductState()) {
			case "거래중":
				sellCountIng = sellCountIng + 1;
				break;
			case "거래완료":
				sellCountDone = sellCountDone + 1;
				break;
			}
//			if(countVo.getProductState().equals("거래중")) {	
//				sellCountIng = sellCountIng + 1;
//				
//			} else if(countVo.getProductState().equals("거래완료")) {
//				sellCountDone = sellCountDone + 1;			
//			}
		}
		request.setAttribute("sellCountIng", sellCountIng);
		request.setAttribute("sellCountDone", sellCountDone);
		
		//구매 거래 카운트
		List<MypageVO> buyList = ms.buySelectList(memberName);
		request.setAttribute("buyList", buyList);
		int buyCountIng = 0;
		int buyCountDone = 0;
		for(MypageVO countVo : buyList) {
			switch(countVo.getProductState()) {
			case "거래중":
				buyCountIng = buyCountIng + 1;
				break;
			case "거래완료":
				buyCountDone = buyCountDone + 1;
				break;
			}
//			if(countVo.getProductState().equals("거래중")) {	
//				buyCountIng = buyCountIng + 1;
//				
//			} else if(countVo.getProductState().equals("거래완료")) {
//				buyCountDone = buyCountDone + 1;
//				System.out.println(buyCountIng);
//			}
		}
		request.setAttribute("buyCountIng", buyCountIng);
		request.setAttribute("buyCountDone", buyCountDone);
		
		
		
		return "mypage/mypage";
	}

}
