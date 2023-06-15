package co.market.lemon.notice.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.notice.service.NoticeMapper;
import co.market.lemon.notice.service.NoticeService;
import co.market.lemon.notice.service.NoticeVO;

public class NoticeServiceImpl implements NoticeService {
	SqlSession sqlSession=DataSource.getInstance().openSession(true);
	NoticeMapper map=sqlSession.getMapper(NoticeMapper.class);

	@Override
	public List<NoticeVO> noticeSelectList() {
		// TODO Auto-generated method stub
		return map.noticeSelectList();
	}

	@Override
	public NoticeVO noticeSelect(NoticeVO vo) {
		return map.noticeSelect(vo);
	}

	@Override
	public int noticeInsert(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeInsert(vo);
	}

	@Override
	public int noticeUpdate(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeUpdate(vo);
	}

	@Override
	public int noticeDelete(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeDelete(vo);
	}

}
