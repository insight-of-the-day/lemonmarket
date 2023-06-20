package co.market.lemon.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
//	MEMBER_ID    NOT NULL VARCHAR2(50)  
//	MEMBER_PW    NOT NULL VARCHAR2(256) 
//	MEMBER_NAME  NOT NULL VARCHAR2(30)  
//	MEMBER_TEL   NOT NULL VARCHAR2(20)  
//	MEMBER_GRADE NOT NULL VARCHAR2(10)  
	
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberTel;
	private String memberGrade;
	private int memberCount;
	
	
	 public int  viewPage = 1;
	 public int startIndex= 1;
	 public int endIndex = 10;

}
