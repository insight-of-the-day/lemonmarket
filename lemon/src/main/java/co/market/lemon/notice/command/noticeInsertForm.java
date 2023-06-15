package co.market.lemon.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.notice.service.NoticeService;
import co.market.lemon.notice.service.NoticeVO;
import co.market.lemon.notice.serviceImpl.NoticeServiceImpl;

public class noticeInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "notice/noticeInsert";
	}

}
