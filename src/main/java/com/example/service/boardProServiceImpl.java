package com.example.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.Criteria;
import com.example.dto.boardProDTO;
import com.example.mapper.boardProMapper;

@Service
public class boardProServiceImpl implements boardProService {

	private static final Logger log = LoggerFactory.getLogger(boardProServiceImpl.class);
	
	@Autowired
	private boardProMapper mapper;
	
	@Override
	public List<boardProDTO> getListPro(Criteria crt) {
		// TODO Auto-generated method stub
		log.info("getListPro.......");
		return mapper.getListPro(crt);
	}

	@Override
	public void register(boardProDTO proDTO) {
		// TODO Auto-generated method stub
		log.info("register.......");
		mapper.insert(proDTO);
	}

	@Override
	public boardProDTO get(String pro_board_id) {
		// TODO Auto-generated method stub
		log.info("get..........");
		return mapper.read(pro_board_id);
	}

	@Override
	public void modify(boardProDTO proDTO) {
		// TODO Auto-generated method stub
		log.info("modify.......");
		mapper.update(proDTO);
	}

	@Override
	public void remove(String pro_board_id) {
		// TODO Auto-generated method stub
		log.info("remove.........");
		mapper.delete(pro_board_id);
	}

}
