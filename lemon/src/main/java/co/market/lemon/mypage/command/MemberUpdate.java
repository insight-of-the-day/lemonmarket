package co.market.lemon.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;

public class MemberUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();

		
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberId((String) session.getAttribute("id"));
		vo.setMemberName((String) session.getAttribute("name"));
		
		
		int n = ms.memberUpdate(vo);
		if(n != 0) {
			request.setAttribute("message", "회원 정보가 수정되었습니다.");
			session.setAttribute("id", vo.getMemberId());
			session.setAttribute("name", vo.getMemberName());
			session.setAttribute("grade", vo.getMemberGrade());
			session.setAttribute("pw", vo.getMemberPw());
			session.setAttribute("tel", vo.getMemberTel());
		} else {
			request.setAttribute("message", "회원 정보를 수정하지 못했습니다.");
		}
		return "member/memberMessage";
	}

}
