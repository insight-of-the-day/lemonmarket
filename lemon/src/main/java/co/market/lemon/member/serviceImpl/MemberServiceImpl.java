package co.market.lemon.member.serviceImpl;

import java.util.List;


import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.member.service.MemberMapper;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;



public class MemberServiceImpl implements MemberService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);

	@Override
	public List<MemberVO> memberSelectList() {
		// TODO Auto-generated method stub
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberDelete(vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberLogin(vo);
	}

	@Override
	public MemberVO memberSelectName(MemberVO vo) {
		
		return map.memberSelectName(vo);
	}

	@Override
	public int memberDeleteName(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberDeleteName(vo);
	}

	@Override
	public int memberGradeUpdate(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberGradeUpdate(vo);
	}

	@Override
	public int selectMemberTotal(MemberVO vo) {
		
		return map.selectMemberTotal(vo);
	}

	@Override
	public List<MemberVO> selectMemberListPaging(MemberVO vo) {
		
		return map.selectMemberListPaging(vo);
	}
	
	@Override
	public int NaverApi(MemberVO vo) {
		
		return map.NaverApi(vo);
	}



	//회원 등급 조정
	@Override
	public int sellTotalCount(MemberVO vo) {
		return map.sellTotalCount(vo);
	}

	@Override
	public int updateGradeR(MemberVO vo) {
		return map.updateGradeR(vo);
	}

	@Override
	public int updateGradeV(MemberVO vo) {
		return map.updateGradeV(vo);
	}

	@Override
	public int updateGradeVV(MemberVO vo) {
		return map.updateGradeVV(vo);
	}

	//탈퇴시 비밀번호 확인용
	@Override
	public String passwordCheck(String id) {
		return map.passwordCheck(id);
	}

}
