package co.market.lemon.reply.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.reply.service.ReplyService;
import co.market.lemon.reply.service.ReplyVO;
import co.market.lemon.reply.serviceImpl.ReplyServiceImpl;

public class RecommentInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ReplyService rs = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setReplyWriter(request.getParameter("replyWriter"));
		vo.setReplySubject(request.getParameter("replySubject"));
		vo.setReplySecret(request.getParameter("replySecret"));
		if (vo.getReplySecret() == null) {
			vo.setReplySecret("n");
		} else if (vo.getReplySecret().equals("on")) {
			vo.setReplySecret("y");
		}
		vo.setReplyParent(Integer.valueOf(request.getParameter("replyId")));
		vo.setReplyLevel(2);

		int result = rs.replyInsert(vo);
		
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
