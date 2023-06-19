package co.market.lemon.reply.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.reply.service.ReplyService;
import co.market.lemon.reply.service.ReplyVO;
import co.market.lemon.reply.serviceImpl.ReplyServiceImpl;

public class ReplyUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReplyService rs = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		vo.setReplyId(Integer.valueOf(request.getParameter("replyId")));
		vo.setReplySubject(request.getParameter("replySubject"));
		vo.setReplySecret(request.getParameter("replySecret"));
		if (vo.getReplySecret() == null) {
			vo.setReplySecret("n");
		} else if (vo.getReplySecret().equals("on")) {
			vo.setReplySecret("y");
		}
		
		rs.replyUpdate(vo);

		String referer = request.getHeader("Referer");

		return "redirect:" + referer;
	}

}
