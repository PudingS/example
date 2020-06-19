package com.example.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.example.dto.memberDTO;
import com.example.mapper.memberMapper;

public class memberDAOImpl implements memberDAO {
	
	private SqlSession sqlSession;
	private memberMapper mapper;
	public void setSqlsession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public List<memberDTO> getMem() {
		// TODO Auto-generated method stub
		//return sqlSession.selectList("MemberMapper.getMem");
		return mapper.getMem();
	}

}
