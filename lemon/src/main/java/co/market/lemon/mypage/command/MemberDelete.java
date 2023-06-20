package co.market.lemon.mypage.command;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		mvo.setMemberPw(request.getParameter("memberPw"));
		
		mvo.setMemberId((String) session.getAttribute("id"));	
		String checkId = mvo.getMemberId();
		
		pvo.setProductWriter((String) session.getAttribute("name"));
		rvo.setReplyWriter((String) session.getAttribute("name"));
		
		
		String originPw = ms.passwordCheck(checkId);
		
		int n = 0;

		while(true) {
			if(mvo.getMemberPw().equals(originPw)) {
				//회원이 쓴 게시글 삭제
				ps.productNameDelete(pvo);				
				//회원이 쓴 댓글 삭제
				rs.replyNameDelete(rvo);
				//회원 삭제
				n = ms.memberDelete(mvo);				
				break;
			} else {	
				try {
					response.setContentType("text/html; charset=utf-8");
					PrintWriter out = response.getWriter();
					out.println("<script> alert('비밀번호가 일치하지 않습니다.'); history.go(-1); </script>");
					out.flush();
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}	
			}
		}
		

		if(n != 0) {
			request.setAttribute("message", "회원 탈퇴가 완료되었습니다.");
		} else {
			request.setAttribute("message", "회원 탈퇴를 실패하였습니다.");
		}

		
		session.invalidate();
		return "member/memberMessage";
	}
	
	
	

}
