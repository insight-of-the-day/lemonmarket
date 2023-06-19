package co.market.lemon.mypage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.MypageVO;
import co.market.lemon.mypage.serviceImpl.MypageServiceImpl;

public class HeartSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MypageVO vo = new MypageVO();
		HttpSession session = request.getSession();
		vo.setMemberId((String) session.getAttribute("id"));
		String memberId = vo.getMemberId();
			
		MypageService ms = new MypageServiceImpl();
		List<MypageVO> heartList = new ArrayList<MypageVO>();

		
		heartList = ms.heartSelectList(memberId);
		request.setAttribute("heartList", heartList);
			
		return "mypage/heartSelectList";
	}

}
