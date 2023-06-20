package co.market.lemon.reply.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.reply.service.ReplyService;
import co.market.lemon.reply.service.ReplyVO;
import co.market.lemon.reply.serviceImpl.ReplyServiceImpl;

public class RecommentInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ReplyService rs = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setReplyId(Integer.valueOf(request.getParameter("replyId")));
		rs.replySelect(vo.getReplyId());
		
		request.setAttribute("reply", vo);
		
		return "product/recommentInsertForm";
	}

}
