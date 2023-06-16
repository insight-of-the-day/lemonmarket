package co.market.lemon.mypage.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.mypage.service.MypageMapper;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.MypageVO;


public class MypageServiceImpl implements MypageService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	MypageMapper map = sqlSession.getMapper(MypageMapper.class);
	
	@Override
	public List<MypageVO> sellSelectList(String name) {
		
		return map.sellSelectList(name);
	}

	@Override
	public List<MypageVO> heartSelectList(String id) {
		// TODO Auto-generated method stub
		return null;
	}



}
