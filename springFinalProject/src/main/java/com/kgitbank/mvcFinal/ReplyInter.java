package com.kgitbank.mvcFinal;

public interface ReplyInter {

	//1. 댓글 추가
	void insert(ReplyDTO replyDTO);

	//2. 댓글 삭제
	void delete(ReplyDTO replyDTO);

}