package co.market.lemon.adminpage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.adminpage.service.AdminReportService;
import co.market.lemon.adminpage.service.AdminReportServiceImpl;
import co.market.lemon.adminpage.service.AdminReportVO;
import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;

public class ReportThree implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO memvo = new MemberVO();
		memvo.setMemberName(request.getParameter("reportSuspect"));
		int memn= ms.memberDeleteName(memvo);
		
		AdminReportService ars = new AdminReportServiceImpl();
		AdminReportVO vo = new AdminReportVO();
		vo.setReportSuspect(request.getParameter("reportSuspect"));
		

				
		int n = ars.reportAllDelete(vo);
		
		if(memn !=0 && n !=0) {
			request.setAttribute("message", "경고 3회 받은 회원으로 탈퇴를 시켰습니다");
		}else {
			request.setAttribute("message", "신고처리 실패");
		}
		return "adminMypage/adminReportMessage";
	}

}
