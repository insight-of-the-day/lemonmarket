package co.market.lemon.heart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.heart.service.HeartService;
import co.market.lemon.heart.service.HeartVO;
import co.market.lemon.heart.serviceImpl.HeartServiceImpl;

public class AjaxHeart implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HeartService hs = new HeartServiceImpl();
		HeartVO vo = new HeartVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));		
		
		vo.setMemberId(request.getParameter("id"));
		int n = hs.selectHeart(vo);
		

		String str = "Ajax:";  
		if(n == 0) {  
			str += "Heart";
			hs.addHeart(vo);
		}else {  
			str += "noHeart";
			hs.deleteHeart(vo);
		}
		return str;

	}

}
