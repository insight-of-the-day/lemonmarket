package co.market.lemon.reply.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.reply.service.ReplyService;
import co.market.lemon.reply.service.ReplyVO;
import co.market.lemon.reply.serviceImpl.ReplyServiceImpl;

public class ReplyDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReplyService rs = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		vo.setReplyId(Integer.valueOf(request.getParameter("replyId")));
		rs.replyDelete(vo);
		
		return "redirect:productSelect.do";
	}

}
