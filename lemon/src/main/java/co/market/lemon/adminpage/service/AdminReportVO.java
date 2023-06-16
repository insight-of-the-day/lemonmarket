package co.market.lemon.adminpage.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdminReportVO {
//	REPORT_ID	NUMBER
//	PRODUCT_ID	NUMBER
//	REPORT_REPORTER	VARCHAR2(50 BYTE)
//	REPORT_SUSPECT	VARCHAR2(50 BYTE)
//	REPORT_CONTENT	VARCHAR2(4000 BYTE)
//	REPORT_CATEGORY	VARCHAR2(30 BYTE)
//	REPORT_REASON	VARCHAR2(20 BYTE)
	
	private int reportId;
	private int productId;
	private String reportReporter;
	private String reportSuspect;
	private String reportContent;
	private String reportCategory;
	private String reportReason;

}
