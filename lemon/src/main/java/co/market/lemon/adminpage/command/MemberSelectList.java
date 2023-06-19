package co.market.lemon.adminpage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;

public class MemberSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<MemberVO> members = new ArrayList<MemberVO>();
		MemberService ns = new MemberServiceImpl();
		MemberVO vo = new MemberVO();

		int total = ns.selectMemberTotal(vo);
		int totalPage = (int)Math.ceil((double)total/10);

		String viewPageParam = request.getParameter("viewPage");
		int viewPage = viewPageParam != null ? Integer.parseInt(viewPageParam) : 1;
		vo.setViewPage(viewPage);
		int startIndex = (viewPage-1) * 10 +1;
		int endIndex = startIndex + (10 - 1);
		
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
		
		
		members = ns.selectMemberListPaging(vo);
		
		request.setAttribute("members", members);
		request.setAttribute("total", total);
		request.setAttribute("totalPage", totalPage);
		
		//
		request.setAttribute("viewPage", viewPage);

		return "adminMypage/memberSelectList";
	}

}
