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
		
		AdminReportService ars= new AdminReportServiceImpl();
		List<AdminReportVO> reports = new ArrayList<AdminReportVO>();
		AdminReportVO vo = new AdminReportVO();
		
		int total = ars.selectReportTotal(vo);
		int totalPage =(int)Math.ceil((double)total/10);
		
		String viewPageParam = request.getParameter("viewPage");
		int viewPage = viewPageParam != null ? Integer.parseInt(viewPageParam) : 1;
		vo.setViewPage(viewPage);
		int startIndex = (viewPage-1) * 10 +1;
		int endIndex = startIndex + (10 - 1);
		
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
		
		reports = ars.selectmemberPageList(vo);
		
		request.setAttribute("reports", reports);
		request.setAttribute("total", total);
		request.setAttribute("totalPage", totalPage);
		
		return "adminMypage/adminReportList";
	}

}
