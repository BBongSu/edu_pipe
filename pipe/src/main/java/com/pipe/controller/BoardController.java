package com.pipe.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pipe.service.BoardService;

@RestController
@RequestMapping("/board")
public class BoardController {

	private final BoardService boardService;

	public BoardController(BoardService boardService) {
		this.boardService = boardService;
	}

	@PostMapping("/list")
	public List<LinkedHashMap<String,Object>> boardList(@RequestBody Map<String,Object> map){

		List<LinkedHashMap<String,Object>> boardList = boardService.boardList(map);

		return boardList;
	}

	@PostMapping("/select")
	public Map<String,Object> boardSelect(@RequestBody Map<String,Object> map){

		Map<String,Object> boardSelect = boardService.boardSelect(map);

		return boardSelect;
	}

	@PostMapping("/insert")
	public int boardInsert(@RequestBody Map<String,Object> map) {

		int boardInsert = boardService.boardInsert(map);

		return boardInsert;
	}

	@PostMapping("/update")
	public int boardUpdate(@RequestBody Map<String,Object> map) {

		int boardUpdate = boardService.boardUpdate(map);

		return boardUpdate;
	}

	@PostMapping("/delete")
	public int boardDelete(@RequestBody Map<String,Object> map) {

		int boardDelete = boardService.boardDelete(map);

		return boardDelete;
	}
}
