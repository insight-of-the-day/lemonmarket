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
