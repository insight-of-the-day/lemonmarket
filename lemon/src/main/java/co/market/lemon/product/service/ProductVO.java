package co.market.lemon.product.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class ProductVO {
//	PRODUCT_ID	NUMBER
//	PRODUCT_CATEGORY	VARCHAR2(20 BYTE)
//	PRODUCT_INFO	VARCHAR2(10 BYTE)
//	PRODUCT_WRITER	VARCHAR2(30 BYTE)
//	PRODUCT_TITLE	VARCHAR2(300 BYTE)
//	PRODUCT_PRICE	NUMBER
//	PRODUCT_SUBJECT	VARCHAR2(4000 BYTE)
//	PRODUCT_WDATE	DATE
//	PRODUCT_VIEW	NUMBER
//	PRODUCT_STATE	VARCHAR2(10 BYTE)

	private int productId;
	private String productCategory;
	private String productInfo;
	private String productWriter;
	private String productTitle;
	private int productPrice;
	private String productSubject;
	private Date productWdate;
	private int productView;
	private String productState;
	private String productImg1;
	private String productImgDir1;
	private String productBuyer;

	// 페이징 처리
	public int viewPage = 1;
	public int startIndex = 1;
	public int endIndex = 5;

}
