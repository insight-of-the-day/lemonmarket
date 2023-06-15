package co.market.lemon.mypage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.SellVO;
import co.market.lemon.mypage.serviceImpl.MypageServiceImpl;

public class SellSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {			
		MypageService ms = new MypageServiceImpl();
		List<SellVO> sellList = new ArrayList<SellVO>();

		sellList = ms.sellSelectList();
		request.setAttribute("sellList", sellList);	
		
		return "mypage/sellSelectList";
	}

}
