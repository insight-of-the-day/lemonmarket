package co.market.lemon.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;

public class MemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();

		vo.setMemberId((String) session.getAttribute("id"));
		int n = ms.memberDelete(vo);
		if(n != 0) {
			request.setAttribute("message", "회원 탈퇴가 완료되었습니다.");
		} else {
			request.setAttribute("message", "회원 탈퇴를 실패하였습니다.");
		}
		
		session.invalidate();
		return "member/memberMessage";
	}
	
	
	

}
