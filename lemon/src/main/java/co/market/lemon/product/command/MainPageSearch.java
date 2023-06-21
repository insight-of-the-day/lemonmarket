package co.market.lemon.product.command;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class MainPageSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductTitle(request.getParameter("mainPageSearch"));
		int total = ps.mainSearchTotal(vo);
		int totalPage =(int)Math.ceil((double)total/5);
		
		String viewPageParam=request.getParameter("viewPage");
		int viewPage=viewPageParam!=null?Integer.parseInt(viewPageParam):1;
		vo.setViewPage(viewPage);
		int startIndex=(viewPage-1)*5+1;
		int endIndex=startIndex+(5-1);
		
		
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
		
		String title = vo.getProductTitle();
		request.setAttribute("title", title);
		List<ProductVO> products = ps.mainSearchPaging(vo);
		request.setAttribute("products", products);
		request.setAttribute("total", total);
		request.setAttribute("totalPage", totalPage);
		
		request.setAttribute("viewPage", viewPage);
		
		return "product/mainPageSearch";
	}

}
