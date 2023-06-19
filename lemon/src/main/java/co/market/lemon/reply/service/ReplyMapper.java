package co.market.lemon.reply.service;

import java.util.List;

public interface ReplyMapper {
	
	List<ReplyVO> replyList(int productId);
	
	ReplyVO replySelect(int replyId);
	
	int replyInsert(ReplyVO vo);
	
	int replyUpdate(ReplyVO vo);
	
	int replyDelete(ReplyVO vo);
	
	int replyNameDelete(ReplyVO vo);
	

}
