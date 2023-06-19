package co.market.lemon.mypage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.MypageVO;
import co.market.lemon.mypage.serviceImpl.MypageServiceImpl;

public class RecentSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MypageVO vo = new MypageVO();
		List<MypageVO> recentList = new ArrayList<MypageVO>();
		MypageService ms = new MypageServiceImpl();
		
		//쿠키에 저장된 상품정보 읽기
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies) {
			if(c.getName().startsWith("productCId")) {
				vo = ms.recentSelectList(Integer.parseInt(c.getValue()));
				recentList.add(vo);
			}
		}
		
		request.setAttribute("recentList", recentList);
		
		
		return "mypage/recentSelectList";
	}

}
