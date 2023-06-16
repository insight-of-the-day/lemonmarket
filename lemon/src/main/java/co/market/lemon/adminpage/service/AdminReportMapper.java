package co.market.lemon.adminpage.service;

import java.util.List;

public interface AdminReportMapper {
	
	List<AdminReportVO> reportSelectList();

	AdminReportVO reportSelect(AdminReportVO vo);

	int reportUpdate(AdminReportVO vo);

	int reportDelete(AdminReportVO vo);
	
}
