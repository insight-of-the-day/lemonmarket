package co.market.lemon.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.notice.service.NoticeService;
import co.market.lemon.notice.service.NoticeVO;
import co.market.lemon.notice.serviceImpl.NoticeServiceImpl;

public class NoticeInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns=new NoticeServiceImpl();
		NoticeVO vo= new NoticeVO();
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		
		int n=ns.noticeInsert(vo);
		if(n>0) {
			request.setAttribute("message", "공지사항이 입력되었습니다");
		}else {
			request.setAttribute("message", "공지사항을 입력하지 못했습니다");
		}
		
		return "noticeMain.do";
	}

}
