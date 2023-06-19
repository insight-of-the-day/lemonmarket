package co.market.lemon.product.service;

import java.util.List;

import co.market.lemon.adminpage.service.AdminReportVO;

public interface ProductMapper {
	List<ProductVO> fashionproductSelectListBuy();
	
	List<ProductVO> fashionproductSelectListSell();
	
	List<ProductVO> livingproductSelectListBuy();
	
	List<ProductVO> livingproductSelectListSell();
	
	List<ProductVO>	foodproductSelectListBuy();
	
	List<ProductVO> foodproductSelectListSell();
	
	List<ProductVO> guitarproductSelectListBuy();
	
	List<ProductVO> guitarproductSelectListSell();

	ProductVO productSelect(ProductVO vo);

	int productInsert(ProductVO vo);

	int productUpdate(ProductVO vo);

	int productDelete(ProductVO vo);
	
	int productHitUpdate(ProductVO vo);
	
	int productPullUp(ProductVO vo);
	
	int productSell(ProductVO vo);
	
	int productReport(AdminReportVO vo);
}

