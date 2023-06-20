package co.market.lemon.mypage.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.market.lemon.product.service.ProductVO;



public interface MypageMapper {
	//판매 내역
	List<MypageVO> sellSelectList(String name);
	
	//판매 내역 페이징
	List<MypageVO> sellSelectPaging(@Param("memberName") String name, @Param("page") int page);
	
	//판매 내역 검색
	List<MypageVO> sellSelect(@Param("memberName") String name, @Param("productSearch")String search, @Param("page") int page);
	
	//판매 내역 검색 카운트용
	List<MypageVO> sellSelectCount(@Param("memberName") String name, @Param("productSearch")String search);
	
	
	//구매 내역
	List<MypageVO> buySelectList(String name);
	
	//구매 내역 페이징
	List<MypageVO> buySelectPaging(@Param("memberName") String name, @Param("page") int page);
	
	//구매 내역 검색
	List<MypageVO> buySelect(@Param("memberName") String name, @Param("productSearch")String search, @Param("page") int page);
	
	//구매 내역 검색 카운트용
	List<MypageVO> buySelectCount(@Param("memberName") String name, @Param("productSearch")String search);
	
	
	//찜한 상품
	List<MypageVO> heartSelectList(String id);
	
	//최근 본 상품
	MypageVO recentSelectList(int no);
	
	
}
