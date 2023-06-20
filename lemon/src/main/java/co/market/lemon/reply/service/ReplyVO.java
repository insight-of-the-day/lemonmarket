package co.market.lemon.reply.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReplyVO {
	private int productId;
	private int replyId;
	private String replyWriter;
	private String replySubject;
	private Date replyWdate;
	private String replySecret;
	private int replyParent;
	private int replyLevel;
}
