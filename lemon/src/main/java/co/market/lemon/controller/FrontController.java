package co.market.lemon.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.adminpage.command.AdminMemberDelete;
import co.market.lemon.adminpage.command.AdminMypage;
import co.market.lemon.adminpage.command.MemberReportList;
import co.market.lemon.adminpage.command.MemberSelect;
import co.market.lemon.adminpage.command.MemberSelectList;
import co.market.lemon.command.MainCommand;
import co.market.lemon.common.Command;
import co.market.lemon.member.command.AjaxCheckId;
import co.market.lemon.member.command.MemberInsert;
import co.market.lemon.member.command.MemberInsertForm;
import co.market.lemon.member.command.MemberLogin;
import co.market.lemon.member.command.MemberLoginForm;
import co.market.lemon.member.command.MemberLogout;
import co.market.lemon.mypage.command.MemberDelete;
import co.market.lemon.mypage.command.MemberDeleteForm;
import co.market.lemon.mypage.command.MemberUpdate;
import co.market.lemon.mypage.command.MemberUpdateForm;
import co.market.lemon.mypage.command.Mypage;
import co.market.lemon.mypage.command.SellSelectList;
import co.market.lemon.notice.command.NoticeDelete;
import co.market.lemon.notice.command.NoticeInsert;
import co.market.lemon.notice.command.NoticeInsertForm;
import co.market.lemon.notice.command.NoticeMain;
import co.market.lemon.notice.command.NoticeSelect;
import co.market.lemon.notice.command.NoticeUpdate;
import co.market.lemon.notice.command.NoticeUpdateForm;
import co.market.lemon.product.command.ProductInsert;
import co.market.lemon.product.command.ProductInsertForm;
import co.market.lemon.product.command.ProductListBuy;
import co.market.lemon.product.command.ProductListSell;
import co.market.lemon.product.command.ProductSelect;
import co.market.lemon.product.command.ProductUpdate;
import co.market.lemon.product.command.ProductUpdateForm;
import co.market.lemon.reply.command.replyInsert;



/**
 * Servlet implementation class FrontController
 */

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
		super();
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		//공통부분s
		map.put("/main.do", new MainCommand());
		map.put("/memberInsertForm.do", new MemberInsertForm());
		map.put("/memberLoginForm.do", new MemberLoginForm());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/ajaxCheckId.do", new AjaxCheckId());

		//상희zone
		map.put("/memberLogout.do", new MemberLogout());
		map.put("/adminMypage.do", new AdminMypage());
		map.put("/memberSelectList.do", new MemberSelectList());
		map.put("/memberReportList.do", new MemberReportList());
		map.put("/memberSelect.do", new MemberSelect());
		map.put("/adminMemberDelete.do", new AdminMemberDelete());



    	//혜련zone

		map.put("/productListBuy.do", new ProductListBuy());
		map.put("/productListSell.do", new ProductListSell());

		map.put("/productInsertForm.do", new ProductInsertForm());
		map.put("/productInsert.do", new ProductInsert());

		map.put("/productUpdateForm.do", new ProductUpdateForm());
		map.put("/productUpdate.do", new ProductUpdate());


		//송이zone
		map.put("/mypage.do", new Mypage());  //마이페이지
		map.put("/memberUpdateForm.do", new MemberUpdateForm());  //수정 폼 호출
		map.put("/memberUpdate.do", new MemberUpdate());  //수정 실행
		map.put("/memberDeleteForm.do", new MemberDeleteForm());  //삭제 폼 호출
		map.put("/memberDelete.do", new MemberDelete());  //삭제 실행
		
		map.put("/sellSelectList.do", new SellSelectList());  //판매 내역

  

		//주현이 영역~~~ notice
		map.put("/noticeMain.do", new NoticeMain());
		map.put("/noticeInsertForm.do", new NoticeInsertForm());
		map.put("/noticeSelect.do", new NoticeSelect());
		map.put("/noticeUpdate.do", new NoticeUpdate());
		map.put("/noticeDelete.do", new NoticeDelete());
		map.put("/noticeUpdateForm.do", new NoticeUpdateForm());
		map.put("/noticeInsert.do",new NoticeInsert());


		//나리zone
		map.put("/productSelect.do", new ProductSelect());
		map.put("/replyInsert.do", new replyInsert());

	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8"); 

		String uri = request.getRequestURI(); 
		String contextPath = request.getContextPath(); 
		String page = uri.substring(contextPath.length()); 

		Command command = map.get(page); 
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) { 

			
			if (viewPage.startsWith("Ajax:")) { 
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5)); 
				return;
			}

			viewPage = viewPage + ".tiles";

			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response); 
		} else { 
			response.sendRedirect(viewPage); 
		}
	}

}
