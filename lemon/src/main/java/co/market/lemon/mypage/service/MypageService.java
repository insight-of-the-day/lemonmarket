package co.market.lemon.mypage.service;

import java.util.List;

public interface MypageService {
	//판매 내역
	List<MypageVO> sellSelectList(String name);
	
	//관심목록
	List<MypageVO> heartSelectList(String id);

}
