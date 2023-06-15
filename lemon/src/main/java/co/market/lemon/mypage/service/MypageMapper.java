package co.market.lemon.mypage.service;

import java.util.List;



public interface MypageMapper {
	//판매 내역
	List<SellVO> sellSelectList();
	
	//찜 목록
	List<HeartVO> heartSelectList();
	
	//최근 본 상품
}
