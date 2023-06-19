package co.market.lemon.product.serviceImpl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import co.market.lemon.adminpage.service.AdminReportVO;
import co.market.lemon.common.DataSource;
import co.market.lemon.product.service.ProductMapper;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;

public class ProductServiceImpl implements ProductService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper map = sqlSession.getMapper(ProductMapper.class);
	

	@Override
	public ProductVO productSelect(ProductVO vo) {
		return map.productSelect(vo);
	}

	@Override
	public int productInsert(ProductVO vo) {
		return map.productInsert(vo);
	}

	@Override
	public int productUpdate(ProductVO vo) {
		return map.productUpdate(vo);
	}

	@Override
	public int productDelete(ProductVO vo) {
		return map.productDelete(vo);
	}

	@Override
	public int productHitUpdate(ProductVO vo) {
		return map.productHitUpdate(vo);
	}


	@Override
	public List<ProductVO> productSelectListBuy(@Param("productInfo")String info, @Param("productCategory")String category) {
		// TODO Auto-generated method stub
		return map.productSelectListBuy(info,category);
	}

	@Override
	public List<ProductVO> productSelectListSell(@Param("productInfo")String info, @Param("productCategory")String category) {
		// TODO Auto-generated method stub
		return map.productSelectListSell(info,category);
	}



	@Override
	public int productPullUp(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productPullUp(vo);
	}

	@Override
	public int productNameDelete(ProductVO vo) {
		
		return map.productNameDelete(vo);
	}

	@Override
	public List<ProductVO> mainPageSearch(ProductVO vo) {
		
		return map.mainPageSearch(vo);
	}


	
	@Override
	public int productSell(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productSell(vo);
	}

	@Override
	public int productReport(AdminReportVO vo) {
		// TODO Auto-generated method stub
		return map.productReport(vo);
	}
	
	
	
}
