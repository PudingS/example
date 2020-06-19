package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.memberDAO;
import com.example.dto.memberDTO;
import com.example.mapper.memberMapper;

@Service
public class memberServiceImpl implements memberService {
	
	//private memberDAO memDao;
	
	@Autowired
	private memberMapper mapper;
	
//	public void setMemDao(memberDAO memDao) {
//		this.memDao = memDao;
//	}
	
	@Override
	public List<memberDTO> getMem() {
		// TODO Auto-generated method stub
//		List<memberDTO> list = memDao.getMem();
//		for ( memberDTO memDto : list) {
//			memDto.toString();
//		}
		return mapper.getMem();
	}

}
