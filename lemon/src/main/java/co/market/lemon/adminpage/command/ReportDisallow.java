package co.market.lemon.adminpage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.adminpage.service.AdminReportService;
import co.market.lemon.adminpage.service.AdminReportServiceImpl;
import co.market.lemon.adminpage.service.AdminReportVO;
import co.market.lemon.common.Command;

public class ReportDisallow implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		AdminReportService ars = new AdminReportServiceImpl();
		AdminReportVO vo = new AdminReportVO();
		vo.setReportId(Integer.valueOf(request.getParameter("reportId")));
		
		int n = ars.reportDelete(vo);
		
		if(n !=0) {
			request.setAttribute("message", "신고철회 완료");
		}else {
			request.setAttribute("message", "신고삭제");
		}
		return "adminMypage/adminReportMessage";
	}

}
