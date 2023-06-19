package co.market.lemon.adminpage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

public class AdminMemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberName(request.getParameter("memberName"));
		
		int n = ms.memberDelete(vo);
		
		ProductService ps = new ProductServiceImpl();
		ProductVO vopr = new ProductVO();
		vopr.setProductWriter(request.getParameter("memberName"));
		
		int p = ps.productNameDelete(vopr);
		
		ReplyService rs = new ReplyServiceImpl();
		ReplyVO vore = new ReplyVO();
		vore.setReplyWriter(request.getParameter("memberName"));
		
		int r = rs.replyNameDelete(vore);
		
		if(n !=0 && p >= 0 && r >= 0) {
			request.setAttribute("message", "회원 탈퇴처리 성공");
			return "adminMypage/memberSelectMessage";
			
		}else {
			return "adminMypage/memberSelectList";
			}
		
	}

}
