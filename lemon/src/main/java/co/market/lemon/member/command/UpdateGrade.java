package co.market.lemon.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;

public class UpdateGrade implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		HttpSession session = request.getSession();
		
		vo.setMemberName((String) session.getAttribute("name"));		
		vo.setMemberId((String) session.getAttribute("id"));
	
		
		
		
		
		int totalCount = ms.sellTotalCount(vo);
		
		int n=0;
		if(totalCount>=1 && totalCount<10) {
			n = ms.updateGradeR(vo);
			vo = ms.memberSelect(vo);
		} else if(totalCount>=10 && totalCount<100) {
			n = ms.updateGradeV(vo);
			vo = ms.memberSelect(vo);
		} else if(totalCount>=100) {
			n = ms.updateGradeVV(vo);
			vo = ms.memberSelect(vo);
		}
		
		if(n != 0) {
			session.setAttribute("id", vo.getMemberId());
			session.setAttribute("name", vo.getMemberName());
			session.setAttribute("grade", vo.getMemberGrade());
			session.setAttribute("pw", vo.getMemberPw());
			session.setAttribute("tel", vo.getMemberTel());
		}
		return "mypage.do";
	}

}
