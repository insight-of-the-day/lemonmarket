package co.market.lemon.product.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.adminpage.service.AdminReportVO;
import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class ProductReport implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException{
		ProductService ps = new ProductServiceImpl();
		AdminReportVO vo = new AdminReportVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setReportReporter((request.getParameter("reportReporter")));
		vo.setReportSuspect(request.getParameter("reportSuspect"));
		vo.setReportContent(request.getParameter("reportContent"));
		vo.setReportCategory(request.getParameter("reportCategory"));
		vo.setReportReason(request.getParameter("reportReason"));
		
		int result = ps.productReport(vo);
		
		response.setContentType("text/html; charset=UTF-8");
		
		if (result > 0) {
			response.getWriter().append("1");
		} else {
			response.getWriter().append("0");
		}
		
		response.getWriter().close();
		
		return null;
	}

}
