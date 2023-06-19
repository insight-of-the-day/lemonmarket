package co.market.lemon.adminpage.service;

import java.util.List;

public interface AdminReportMapper {
	
	List<AdminReportVO> reportSelectList();

	AdminReportVO reportSelect(AdminReportVO vo);

	int reportUpdate(AdminReportVO vo);

	int reportDelete(AdminReportVO vo);
	
	int reportAllDelete(AdminReportVO vo);
	
	
	//페이징 처리 관련
	
	int selectReportTotal(AdminReportVO vo);
	List<AdminReportVO> selectmemberPageList(AdminReportVO vo);
}
