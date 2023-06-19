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
		String memberName = vo.getMemberName();
		
		
		int totalCount = ms.sellTotalCount(vo);

		//int n = ms.updateGrade(totalCount, memberName);
		
//		if(n != 0) {
//			request.setAttribute("message", "등급이 변경되었습니다");
//		}
		return "main/main";
	}

}
