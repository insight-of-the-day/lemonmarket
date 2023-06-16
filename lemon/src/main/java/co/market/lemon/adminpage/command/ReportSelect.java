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

public class ReportSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		AdminReportService ars = new AdminReportServiceImpl();
		AdminReportVO vo = new AdminReportVO();
		
		vo.setReportId(Integer.valueOf(request.getParameter("reportId")));
		vo=ars.reportSelect(vo);
		request.setAttribute("reports", vo);
		
		
		
		MemberService ms = new MemberServiceImpl();
		MemberVO memVo = new MemberVO();
		
		memVo.setMemberId(request.getParameter("reportSuspect"));
		memVo= ms.memberSelect(memVo);
		request.setAttribute("members", memVo);
		
		
		return "adminMypage/adminReport";
	}

}
