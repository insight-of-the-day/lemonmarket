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
import co.market.lemon.adminpage.command.ReportSelect;
import co.market.lemon.command.MainCommand;
import co.market.lemon.common.Command;
import co.market.lemon.heart.command.AddHeart;
import co.market.lemon.heart.command.DeleteHeart;
import co.market.lemon.member.command.AjaxCheckId;
import co.market.lemon.member.command.AjaxCheckName;
import co.market.lemon.member.command.MemberInsert;
import co.market.lemon.member.command.MemberInsertForm;
import co.market.lemon.member.command.MemberLogin;
import co.market.lemon.member.command.MemberLoginForm;
import co.market.lemon.member.command.MemberLogout;
import co.market.lemon.heart.command.AjaxHeart;
import co.market.lemon.mypage.command.DeleteCookie;
import co.market.lemon.mypage.command.HeartSelectList;
import co.market.lemon.mypage.command.MemberDelete;
import co.market.lemon.mypage.command.MemberDeleteForm;
import co.market.lemon.mypage.command.MemberUpdate;
import co.market.lemon.mypage.command.MemberUpdateForm;
import co.market.lemon.mypage.command.Mypage;
import co.market.lemon.mypage.command.RecentSelectList;
import co.market.lemon.mypage.command.SellSelect;
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
import co.market.lemon.product.command.ProductPullUp;
import co.market.lemon.product.command.ProductSelect;
import co.market.lemon.product.command.ProductUpdate;
import co.market.lemon.product.command.ProductUpdateForm;
import co.market.lemon.product.command.fashionProductListBuy;
import co.market.lemon.product.command.fashionProductListSell;
import co.market.lemon.product.command.foodProductListBuy;
import co.market.lemon.product.command.foodProductListSell;
import co.market.lemon.product.command.guitarProductListBuy;
import co.market.lemon.product.command.guitarProductListSell;
import co.market.lemon.product.command.livingProductListBuy;
import co.market.lemon.product.command.livingProductListSell;
import co.market.lemon.reply.command.ReplyDelete;
import co.market.lemon.reply.command.ReplyInsert;
import co.market.lemon.reply.command.ReplyUpdate;
import co.market.lemon.reply.command.ReplyUpdateForm;



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
		//공통부분
		map.put("/main.do", new MainCommand());
		map.put("/memberInsertForm.do", new MemberInsertForm());
		map.put("/memberLoginForm.do", new MemberLoginForm());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/ajaxCheckId.do", new AjaxCheckId());
		map.put("/ajaxCheckName.do", new AjaxCheckName());

		//상희zone
		map.put("/memberLogout.do", new MemberLogout());
		map.put("/adminMypage.do", new AdminMypage());
		map.put("/memberSelectList.do", new MemberSelectList());
		map.put("/memberReportList.do", new MemberReportList());
		map.put("/memberSelect.do", new MemberSelect());
		map.put("/adminMemberDelete.do", new AdminMemberDelete());
		map.put("/reportSelect.do", new ReportSelect());


    	//혜련zone
		map.put("/fashionproductListBuy.do", new fashionProductListBuy());
		map.put("/fashionproductListSell.do", new fashionProductListSell());
		map.put("/foodproductListBuy.do", new foodProductListBuy());
		map.put("/foodproductListSell.do", new foodProductListSell());
		map.put("/livingproductListBuy.do", new livingProductListBuy());
		map.put("/livingproductListSell.do", new livingProductListSell());
		map.put("/guitarproductListBuy.do", new guitarProductListBuy());
		map.put("/guitarproductListSell.do", new guitarProductListSell());
		

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
		map.put("/sellSelect.do", new SellSelect());  //판매 내역 검색
		map.put("/heartSelectList.do", new HeartSelectList());  //찜한 상품
		map.put("/recentSelectList.do", new RecentSelectList());  //최근 본 상품
		
		
		map.put("/addHeart.do", new AddHeart());  //찜하기 누르기
		map.put("/deleteHeart.do", new DeleteHeart());  //찜취소 누르기
		map.put("/ajaxHeart.do", new AjaxHeart());
		
		
		map.put("/deleteCookie.do", new DeleteCookie());  //최근 본 상품 삭제 -> 쿠키삭제
  

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
		map.put("/replyInsert.do", new ReplyInsert());
		map.put("/replyUpdateForm.do", new ReplyUpdateForm());
		map.put("/replyUpdate.do", new ReplyUpdate());
		map.put("/replyDelete.do", new ReplyDelete());
		map.put("/productPullUp.do", new ProductPullUp());

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
