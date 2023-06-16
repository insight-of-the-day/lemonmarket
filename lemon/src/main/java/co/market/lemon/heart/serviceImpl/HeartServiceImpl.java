package co.market.lemon.heart.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.heart.service.HeartMapper;
import co.market.lemon.heart.service.HeartService;
import co.market.lemon.heart.service.HeartVO;


public class HeartServiceImpl implements HeartService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private HeartMapper map = sqlSession.getMapper(HeartMapper.class);
	
	@Override
	public int addHeart(HeartVO vo) {
		
		return map.addHeart(vo);
	}

	@Override
	public int deleteHeart(HeartVO vo) {

		return map.deleteHeart(vo);
	}

	@Override
	public int selectHeart(HeartVO vo) {
		
		return map.selectHeart(vo);
	}





}
