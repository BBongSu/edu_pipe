package com.pipe.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pipe.mapper.BoardMapper;

@Service
@Transactional
public class BoardService {

	@Autowired
	private BoardMapper boardMapper;

	public List<Map<String, Object>> selectListBoard(Map<String, Object> map) {
		return boardMapper.selectListBoard(map);
	}

	public void deleteBoard(Map<String, Object> map) {
		boardMapper.deleteBoard(map);
	}

	public void updateBoard(Map<String, Object> map) {
		boardMapper.updateBoard(map);
	}

	public void insertBoard(Map<String, Object> map) {
		boardMapper.insertBoard(map);
	}

	public Map<String, Object> selectBoard(Map<String, Object> map) {
		return boardMapper.selectBoard(map);
	}

}
