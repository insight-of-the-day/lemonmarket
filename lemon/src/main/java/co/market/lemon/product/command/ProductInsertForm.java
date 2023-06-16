package co.market.lemon.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;

public class ProductInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "product/productInsertForm";
	}

}
