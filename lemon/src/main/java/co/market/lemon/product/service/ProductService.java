package co.market.lemon.product.service;

import java.util.List;

public interface ProductService {
	List<ProductVO> productSelectListBuy();
	
	List<ProductVO> productSelectListSell();

	ProductVO productSelect(ProductVO vo);

	int productInsert(ProductVO vo);

	int productUpdate(ProductVO vo);

	int productDelete(ProductVO vo);
	
	int productHitUpdate(ProductVO vo);
}
