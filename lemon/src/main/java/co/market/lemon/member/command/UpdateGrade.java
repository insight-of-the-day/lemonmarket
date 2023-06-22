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
		
		vo.setMemberId((String) session.getAttribute("id"));
		vo.setMemberName((String) session.getAttribute("name"));			
		vo.setMemberGrade((String) session.getAttribute("grade"));
		vo.setMemberPw((String) session.getAttribute("pw"));
		vo.setMemberTel((String) session.getAttribute("tel"));
		
		
		int sTotalCount = ms.sellTotalCount(vo);
		int bTotalCount = ms.buyTotalCount(vo);
		String sGrade = (String)session.getAttribute("grade");
		
		int n=0;
		if(sTotalCount>=100 && bTotalCount>=100 && !sGrade.equals("T")) {
			n = ms.updateGradeVV(vo);
			vo = ms.memberSelect(vo);
		} else if(sTotalCount>=10 && bTotalCount>=5 && !sGrade.equals("T")) {
			n = ms.updateGradeV(vo);
			vo = ms.memberSelect(vo);
		} else if(sTotalCount>=1 && !sGrade.equals("T")) {
			n = ms.updateGradeR(vo);
			vo = ms.memberSelect(vo);
		} else if(!sGrade.equals("T")){
			n = ms.updateGradeN(vo);
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
