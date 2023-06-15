package co.market.lemon.product.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

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
	public List<ProductVO> productSelectListBuy() {
		// TODO Auto-generated method stub
		return map.productSelectListBuy();
	}

	@Override
	public List<ProductVO> productSelectListSell() {
		// TODO Auto-generated method stub
		return map.productSelectListSell();
	}

}
