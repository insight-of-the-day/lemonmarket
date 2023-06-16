package co.market.lemon.notice.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.notice.service.NoticeService;
import co.market.lemon.notice.service.NoticeVO;
import co.market.lemon.notice.serviceImpl.NoticeServiceImpl;

public class NoticeMain implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns=new NoticeServiceImpl();
		List<NoticeVO>notices=new ArrayList<>();
		notices=ns.noticeSelectList();
		
		request.setAttribute("notices", notices);
		
		return "notice/noticeMain";
	}

}
