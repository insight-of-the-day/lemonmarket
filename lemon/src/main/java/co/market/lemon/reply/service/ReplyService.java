package co.market.lemon.reply.service;

import java.util.List;

public interface ReplyService {
	
	List<ReplyVO> replyList(int productId);
	
	ReplyVO replySelect(int productId);
	
	int replyInsert(ReplyVO vo);
	
	int replyUpdate(ReplyVO vo);
	
	int replyDelete(ReplyVO vo);

}
