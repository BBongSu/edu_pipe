package com.pipe.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pipe.mapper.BoardMapper;

@Service
@Transactional
public class BoardService {

	private final BoardMapper boardMapper;

	public BoardService(BoardMapper boardMapper) {
		this.boardMapper = boardMapper;
	}

	public List<LinkedHashMap<String,Object>> boardList(Map<String, Object> map) {
		return boardMapper.boardList(map);
	}

	public Map<String, Object> boardSelect(Map<String, Object> map) {
		return boardMapper.boardSelect(map);
	}

	public int boardInsert(Map<String, Object> map) {
		return boardMapper.boardInsert(map);
	}

	public int boardUpdate(Map<String, Object> map) {
		return boardMapper.boardUpdate(map);
	}

	public int boardDelete(Map<String, Object> map) {
		return boardMapper.boardDelete(map);
	}
}
