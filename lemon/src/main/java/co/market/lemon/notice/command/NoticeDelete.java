package co.market.lemon.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.notice.service.NoticeService;
import co.market.lemon.notice.service.NoticeVO;
import co.market.lemon.notice.serviceImpl.NoticeServiceImpl;

public class NoticeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(request.getParameter("noticeId"));
		
		int n = ns.noticeDelete(vo);
		if (n != 0) {
			request.setAttribute("message", "공지사항이 삭제되었습니다.");
		} else {
			request.setAttribute("message", "공지사항 삭제에 실패하였습니다.");
		}
		
		return "notice/message";
	}

}
