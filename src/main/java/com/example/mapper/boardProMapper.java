package com.example.mapper;

import java.util.List;

import com.example.dto.Criteria;
import com.example.dto.boardProDTO;

public interface boardProMapper {
	public List<boardProDTO> getListPro(Criteria crt);

	public void insert(boardProDTO proDTO);
	
	public void insertSelectKey(boardProDTO proDTO);
	
	public boardProDTO read(String pro_board_id);
	
	public int delete(String pro_board_id);
	
	public int update(boardProDTO proDTO);
}
