package co.market.lemon.product.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ProductService {
	List<ProductVO> productSelectListBuy(@Param("productInfo")String info, @Param("productCategory")String category);
	
	List<ProductVO> productSelectListSell(@Param("productInfo")String info, @Param("productCategory")String category);

	ProductVO productSelect(ProductVO vo);

	int productInsert(ProductVO vo);

	int productUpdate(ProductVO vo);

	int productDelete(ProductVO vo);
	
	int productHitUpdate(ProductVO vo);
	
	int productPullUp(ProductVO vo);
}
