package co.market.lemon.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;
import co.market.lemon.reply.service.ReplyService;
import co.market.lemon.reply.service.ReplyVO;
import co.market.lemon.reply.serviceImpl.ReplyServiceImpl;

public class ProductSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 게시글 상세 보기
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		ps.productHitUpdate(vo);
		vo = ps.productSelect(vo);
		request.setAttribute("product", vo);
		
		ReplyService rs = new ReplyServiceImpl();
		List<ReplyVO> replyList = new ArrayList<ReplyVO>();
		replyList = rs.replyList(vo.getProductId());
		request.setAttribute("replyList", replyList);
		
		return "product/productSelect";
	}

}
