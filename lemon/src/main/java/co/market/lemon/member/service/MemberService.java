package co.market.lemon.member.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MemberService {
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO vo);
	MemberVO memberSelectName(MemberVO vo);
	int memberInsert(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(MemberVO vo);
	
	int NaverApi(MemberVO vo);
	
	MemberVO memberLogin(MemberVO vo); 
	
	
	int memberDeleteName(MemberVO vo);
	int memberGradeUpdate(MemberVO vo);
	
	int selectMemberTotal(MemberVO vo);
	List<MemberVO> selectMemberListPaging(MemberVO vo);
	
	
	//회원 등급 조정
	int sellTotalCount(MemberVO vo);
	int updateGrade(@Param("count") int count,@Param("memberName") String name);
	
}
