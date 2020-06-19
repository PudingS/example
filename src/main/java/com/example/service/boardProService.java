package com.example.service;

import java.util.List;

import com.example.dto.Criteria;
import com.example.dto.boardProDTO;

public interface boardProService {
	public List<boardProDTO> getListPro(Criteria crt);
	
	public void register(boardProDTO proDTO);
	
	public boardProDTO get(String pro_board_id);
	
	public void modify(boardProDTO proDTO);
	
	public void remove(String pro_board_id);
}
