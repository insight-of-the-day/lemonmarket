package co.market.lemon.mypage.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.MypageVO;
import co.market.lemon.mypage.serviceImpl.MypageServiceImpl;
import co.market.lemon.reply.service.ReplyService;
import co.market.lemon.reply.service.ReplyVO;
import co.market.lemon.reply.serviceImpl.ReplyServiceImpl;

public class BuySelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MypageVO vo = new MypageVO();
		HttpSession session = request.getSession();
		vo.setMemberName((String) session.getAttribute("name"));
		String memberName = vo.getMemberName();	
		
		MypageService ms = new MypageServiceImpl();

		String productSearch_ = request.getParameter("productSearch");	
		String productSearch = "";
		if(productSearch_ != null && !productSearch_.equals("")) {
			productSearch = productSearch_;
		} 		

		int page = 1;
		String page_ = request.getParameter("page");
		if(page_ != null && !page_.equals("")) {
			page = Integer.parseInt(page_);
		} 
	

		List<MypageVO> buyList = ms.buySelect(memberName, productSearch, page);
		request.setAttribute("buyList", buyList);	
		
		List<MypageVO> buyList2 = ms.buySelectCount(memberName, productSearch);
		request.setAttribute("buyList2", buyList2);	

		
		ReplyService rs = new ReplyServiceImpl();
		List<ReplyVO> replyList = new ArrayList<ReplyVO>();
		
		HashMap<Integer, Object> pMap = new HashMap<>();
		for(MypageVO mvo : buyList2) {
			int pId = mvo.getProductId();

			replyList = rs.replyList(mvo.getProductId());

			pMap.put(pId, replyList);

		}
		request.setAttribute("pMap", pMap);
		
		
		return "mypage/buySelectList";
	}

}
