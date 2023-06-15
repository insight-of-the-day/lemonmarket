package co.market.lemon.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;


public class MemberInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberName(request.getParameter("memberName"));	
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberGrade(request.getParameter("memberGrade"));
		
		int n = ms.memberInsert(vo);
		if(n != 0) {
			//System.out.println("입력 성공");
			request.setAttribute("message", "회원가입 성공하였습니다.");
			return "member/memberInsertMessage";
		} else {
			//System.out.println("입력 실패");
			request.setAttribute("message", "회원가입이 실패하였습니다.");
			return "member/memberMessage";
		}
		
	
	}

}
