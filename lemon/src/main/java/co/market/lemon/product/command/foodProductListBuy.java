package co.market.lemon.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class foodProductListBuy implements Command {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<>();
		ProductVO vo=new ProductVO();
		
		
		
		int total=ps.selectProductTotal(vo,"삽니다","식품");
		int totalPage=(int)Math.ceil((double)total/5);
		
		String viewPageParam=request.getParameter("viewPage");
		int viewPage=viewPageParam!=null?Integer.parseInt(viewPageParam):1;
		vo.setViewPage(viewPage);
		int startIndex=(viewPage-1)*5+1;
		int endIndex=startIndex+(5-1);
		


		
		
		
		products=ps.selectBuyListPaging(startIndex,endIndex, "삽니다", "식품");
		
		request.setAttribute("totalPage", totalPage);	
		request.setAttribute("products", products);
		
		
		
		return "product/foodProductListBuy";
	}

}
