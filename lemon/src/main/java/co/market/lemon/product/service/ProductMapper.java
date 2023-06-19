package co.market.lemon.product.service;

import java.util.List;


import co.market.lemon.adminpage.service.AdminReportVO;

import org.apache.ibatis.annotations.Param;


public interface ProductMapper {
	List<ProductVO> productSelectListBuy(@Param("productInfo")String info, @Param("productCategory")String category);
	
	List<ProductVO> productSelectListSell(@Param("productInfo")String info, @Param("productCategory")String category);

	ProductVO productSelect(ProductVO vo);

	int productInsert(ProductVO vo);

	int productUpdate(ProductVO vo);

	int productDelete(ProductVO vo);
	
	int productHitUpdate(ProductVO vo);
	
	int productPullUp(ProductVO vo);
	
	int productNameDelete(ProductVO vo);
	
	List<ProductVO> mainPageSearch(ProductVO vo);

	int productSell(ProductVO vo);
	
	int productReport(AdminReportVO vo);

}

