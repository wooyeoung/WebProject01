package com.vegan.user.community.service;

import java.util.List;

import com.vegan.user.community.repository.CommunityVO;

public interface CommunityService { //커뮤니티 게시판
	//CRUD 기능 메서드 구현
	public void insertCmnt(CommunityVO vo); //글 작성
	public List<CommunityVO> getCmntList(CommunityVO vo); //전체 글 조회
	public CommunityVO getCmnt(CommunityVO vo); //글 상세 조회
	public Integer getListCount(); //글의 총 개수
	public void updateReadcount(CommunityVO vo); //조회수 업데이트
	public void updateReply_content(CommunityVO vo); //댓글 추가
	public void updateCmnt(CommunityVO vo); //글 수정
	public void deleteCmnt(CommunityVO vo); //글 삭제
}
