package co.market.lemon.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class fashionProductListBuy implements Command {
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		ProductService ps = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<>();
		products = ps.fashionproductSelectListBuy();
		
		request.setAttribute("products", products);
		return "product/fashionProductListBuy";
	}
}
