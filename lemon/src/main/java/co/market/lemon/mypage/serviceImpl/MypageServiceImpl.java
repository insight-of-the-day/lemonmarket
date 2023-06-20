package co.market.lemon.mypage.serviceImpl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.mypage.service.MypageMapper;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.MypageVO;
import co.market.lemon.product.service.ProductVO;


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
	public List<MypageVO> sellSelectCount(String name, String search) {
		return map.sellSelectCount(name, search);
	}

	@Override
	public List<MypageVO> buySelectList(String name) {
		return map.buySelectList(name);
	}
	
	@Override
	public List<MypageVO> buySelectPaging(String name, int page) {
		return map.buySelectPaging(name, page);
	}

	@Override
	public List<MypageVO> buySelect(String name, String search, int page) {
		return map.buySelectCount(name, search);
	}

	@Override
	public List<MypageVO> buySelectCount(String name, String search) {
		return map.buySelectCount(name, search);
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
