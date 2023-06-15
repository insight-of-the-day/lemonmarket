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
		MemberService ns = new MemberServiceImpl();
		List<MemberVO> members = new ArrayList<MemberVO>();
		members = ns.memberSelectList();
		
		request.setAttribute("members", members);
		return "adminMypage/memberSelectList";
	}

}
