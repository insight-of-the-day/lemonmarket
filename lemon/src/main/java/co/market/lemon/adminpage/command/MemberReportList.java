package co.market.lemon.adminpage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.adminpage.service.AdminReportService;
import co.market.lemon.adminpage.service.AdminReportServiceImpl;
import co.market.lemon.adminpage.service.AdminReportVO;
import co.market.lemon.common.Command;

public class MemberReportList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//-신고기능 (카테고리: 욕설및비방,불법및부적절한상품,카테고리부적합,사기,기타사유)
		AdminReportService ars= new AdminReportServiceImpl();
		List<AdminReportVO> reports = new ArrayList<AdminReportVO>();
		reports = ars.reportSelectList();
		
		request.setAttribute("reports", reports);
		
		return "adminMypage/adminReportList";
	}

}
