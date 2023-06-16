package co.market.lemon.heart.service;



public interface HeartMapper {
	//찜하기
	int addHeart(HeartVO vo);
	
	//찜하기 해제
	int deleteHeart(HeartVO vo);
	
	//찜 눌렀는지 확인
	int selectHeart(HeartVO vo);
}
