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

public class ReportProcessing implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO memvo = new MemberVO();
		memvo.setMemberName(request.getParameter("reportSuspect"));
		int memn= ms.memberGradeUpdate(memvo);
		
		AdminReportService ars = new AdminReportServiceImpl();
		AdminReportVO vo = new AdminReportVO();
		vo.setReportId(Integer.valueOf(request.getParameter("reportId")));
		
		int n = ars.reportDelete(vo);
		
		if(memn !=0 && n !=0) {
			request.setAttribute("message", "신고처리 완료");
		}else {
			request.setAttribute("message", "신고처리 없는 회원입니다");
		}
		
		
		return "adminMypage/adminReportMessage";
	}

}
