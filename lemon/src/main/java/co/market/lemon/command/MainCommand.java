package co.market.lemon.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;



public class MainCommand implements Command {

	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "main/main";
	}

}
