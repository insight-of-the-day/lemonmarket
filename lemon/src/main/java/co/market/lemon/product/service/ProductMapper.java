package co.market.lemon.product.service;

import java.util.List;

import co.market.lemon.adminpage.service.AdminReportVO;

import org.apache.ibatis.annotations.Param;

public interface ProductMapper {
	List<ProductVO> productSelectListBuy(@Param("productInfo") String info, @Param("productCategory") String category);

	List<ProductVO> productSelectListSell(@Param("productInfo") String info, @Param("productCategory") String category);

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

	// 페이징 처리 관련

	int selectProductTotal(@Param("vo")ProductVO vo, @Param("productInfo")String productInfo,@Param("productCategory")String productCategory);

	List<ProductVO> selectBuyListPaging(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex, @Param("productInfo") String info, @Param("productCategory") String category);
	
	List<ProductVO> selectSellListPaging(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex, @Param("productInfo") String info, @Param("productCategory") String category);

}
