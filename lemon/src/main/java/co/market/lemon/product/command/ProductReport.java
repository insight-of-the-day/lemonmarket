package co.market.lemon.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.adminpage.service.AdminReportVO;
import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class ProductReport implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		AdminReportVO vo = new AdminReportVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setReportReporter((request.getParameter("reportReporter")));
		vo.setReportSuspect(request.getParameter("reportSuspect"));
		vo.setReportContent(request.getParameter("reportContent"));
		vo.setReportCategory(request.getParameter("reportCategory"));
		vo.setReportReason(request.getParameter("reportReason"));
		
		ps.productReport(vo);
		
		return "redirect:productSelect.do";
	}

}
