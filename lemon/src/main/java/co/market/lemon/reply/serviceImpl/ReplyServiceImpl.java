package co.market.lemon.reply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.reply.service.ReplyMapper;
import co.market.lemon.reply.service.ReplyService;
import co.market.lemon.reply.service.ReplyVO;

public class ReplyServiceImpl implements ReplyService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ReplyMapper map = sqlSession.getMapper(ReplyMapper.class);

	@Override
	public List<ReplyVO> replyList(int productId) {
		// TODO Auto-generated method stub
		return map.replyList(productId);
	}

	@Override
	public ReplyVO replySelect(int replyId) {
		// TODO Auto-generated method stub
		return map.replySelect(replyId);
	}

	@Override
	public int replyInsert(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyInsert(vo);
	}

	@Override
	public int replyUpdate(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyUpdate(vo);
	}

	@Override
	public int replyDelete(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyDelete(vo);
	}

}
