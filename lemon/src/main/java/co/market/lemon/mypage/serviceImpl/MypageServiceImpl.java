package co.market.lemon.mypage.serviceImpl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	public List<MypageVO> sellSelectPaging(String name, int page) {

		return map.sellSelectPaging(name, page);
	}
	
	@Override
	public List<MypageVO> sellSelect(@Param("memberName") String name, @Param("productSearch")String search, @Param("page") int page) {
		
		return map.sellSelect(name, search, page);
	}

	@Override
	public List<MypageVO> heartSelectList(String id) {

		return map.heartSelectList(id);
	}

	@Override
	public MypageVO recentSelectList(int no) {
		
		return map.recentSelectList(no);
	}

	

	



}
