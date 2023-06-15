package co.market.lemon.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;

public class ProductDeleteForm implements Command {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "product/productDelete";
	}
}
