package co.market.lemon.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;
import co.market.lemon.reply.service.ReplyService;
import co.market.lemon.reply.service.ReplyVO;
import co.market.lemon.reply.serviceImpl.ReplyServiceImpl;

public class MemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		ProductService ps = new ProductServiceImpl();
		ProductVO pvo = new ProductVO();
		ReplyService rs = new ReplyServiceImpl();
		ReplyVO rvo = new ReplyVO();
		MemberService ms = new MemberServiceImpl();
		MemberVO mvo = new MemberVO();
		
		
		mvo.setMemberId((String) session.getAttribute("id"));		
		pvo.setProductWriter((String) session.getAttribute("name"));
		rvo.setReplyWriter((String) session.getAttribute("name"));
		
//		ps.productNameDelete(pvo);
//		rs.replyNameDelete(rvo);
		
		int n = ms.memberDelete(mvo);
		if(n != 0) {
			request.setAttribute("message", "회원 탈퇴가 완료되었습니다.");
		} else {
			request.setAttribute("message", "회원 탈퇴를 실패하였습니다.");
		}
		

		
		session.invalidate();
		return "member/memberMessage";
	}
	
	
	

}
