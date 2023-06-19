package co.market.lemon.adminpage.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;

public class AdminReportServiceImpl implements AdminReportService{

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private AdminReportMapper map  = sqlSession.getMapper(AdminReportMapper.class);
	
	
	@Override
	public List<AdminReportVO> reportSelectList() {
		
		return map.reportSelectList();
	}

	@Override
	public AdminReportVO reportSelect(AdminReportVO vo) {
		
		return map.reportSelect(vo);
	}

	@Override
	public int reportUpdate(AdminReportVO vo) {
	
		return map.reportUpdate(vo);
	}

	@Override
	public int reportDelete(AdminReportVO vo) {
		
		return map.reportDelete(vo);
	}

	@Override
	public int reportAllDelete(AdminReportVO vo) {
		
		return map.reportAllDelete(vo);
	}

	
	
	//페이징 처리 관련
	
	
	@Override
	public int selectReportTotal(AdminReportVO vo) {
		
		return map.selectReportTotal(vo);
	}

	@Override
	public List<AdminReportVO> selectmemberPageList(AdminReportVO vo) {
		
		return map.selectmemberPageList(vo);
	}



}
