package co.market.lemon.mypage.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.mypage.service.HeartVO;
import co.market.lemon.mypage.service.MypageMapper;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.SellVO;

public class MypageServiceImpl implements MypageService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	MypageMapper map = sqlSession.getMapper(MypageMapper.class);
	
	@Override
	public List<SellVO> sellSelectList() {
		return map.sellSelectList();
	}

	@Override
	public List<HeartVO> heartSelectList() {
		return map.heartSelectList();
	}

}
