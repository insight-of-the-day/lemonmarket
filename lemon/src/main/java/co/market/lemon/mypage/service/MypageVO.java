package co.market.lemon.mypage.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MypageVO {
	//거래내역
	private String memberName;
	private int productId;
	private String productWriter;
	private String productCategory;
	private String productTitle;
	private String productState;
	private Date productWdate;
	
	//관심목록
	private String memberId;
	private String productInfo;



}
