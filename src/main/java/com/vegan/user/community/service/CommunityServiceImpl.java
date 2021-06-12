package com.vegan.user.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vegan.user.community.repository.CommunityDAO;
import com.vegan.user.community.repository.CommunityVO;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	private CommunityDAO cmnt;
	
	@Override
	public void insertCmnt(CommunityVO vo) {
		cmnt.insertCmnt(vo);
	}

	@Override
	public List<CommunityVO> getCmntList(CommunityVO vo) {
		return cmnt.getCmntList(vo);
	}

	@Override
	public Integer getListCount() {
		return cmnt.getListCount();
	}	
	
	@Override
	public void updateReadcount(CommunityVO vo) {
		cmnt.updateReadcount(vo);
	}
	
	@Override
	public CommunityVO getCmnt(CommunityVO vo) {
		return cmnt.getCmnt(vo);
	}

	@Override
	public void updateCmnt(CommunityVO vo) {
		cmnt.updateCmnt(vo);
	}

	@Override
	public void deleteCmnt(CommunityVO vo) {
		cmnt.deleteCmnt(vo);
	}

	@Override
	public void updateReply_content(CommunityVO vo) {
		cmnt.updateReply_content(vo);
		
	}

}
