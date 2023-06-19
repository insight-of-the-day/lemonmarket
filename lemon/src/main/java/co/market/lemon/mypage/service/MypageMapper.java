package co.market.lemon.mypage.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;



public interface MypageMapper {
	//판매 내역
	List<MypageVO> sellSelectList(String name);
	
	//판매 내역 페이징
	List<MypageVO> sellSelectPaging(@Param("memberName") String name, @Param("page") int page);
	
	//판매 내역 검색
	List<MypageVO> sellSelect(@Param("memberName") String name, @Param("productSearch")String search, @Param("page") int page);
	
	//찜한 상품
	List<MypageVO> heartSelectList(String id);
	
	//최근 본 상품
	MypageVO recentSelectList(int no);
	
}
