package co.market.lemon.adminpage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;

public class AdminMemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		
		int n = ms.memberDelete(vo);
		if(n !=0) {
			request.setAttribute("message", "회원 탈퇴처리 성공");
			return "adminMypage/memberSelectMessage";
		}else {
			request.setAttribute("message", "회원 탈퇴처리 실패");
			return "adminMypage/memberSelectMessage";
		}
		
	}

}
