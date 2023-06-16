package co.market.lemon.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.notice.service.NoticeService;
import co.market.lemon.notice.service.NoticeVO;
import co.market.lemon.notice.serviceImpl.NoticeServiceImpl;

public class NoticeUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns= new NoticeServiceImpl();
		NoticeVO vo=new NoticeVO();
		
		vo.setNoticeId(request.getParameter("noticeId"));
		vo=ns.noticeSelect(vo);
		request.setAttribute("notice", vo);
		System.out.println("sdjkljflawje");
		return "notice/noticeUpdate";
	}

}
