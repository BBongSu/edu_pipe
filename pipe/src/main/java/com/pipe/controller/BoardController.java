package com.pipe.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.pipe.service.BoardService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;

	@GetMapping("/selectListBoard")
	public String selectListBoard(Map<String,Object> map, Model model){

		List<Map<String,Object>> selectListBoard = boardService.selectListBoard(map);

		model.addAttribute("selectListBoard",selectListBoard);

		return "/board";
	}

	@GetMapping("/selectBoard")
	public String selectBoard(HttpServletRequest request, Map<String,Object> map, Model model){

		String id = request.getParameter("id");

		map.put("id", id);

		Map<String,Object> selectBoard = boardService.selectBoard(map);

		model.addAttribute("selectBoard",selectBoard);

		return "/boardDetail";
	}

	@GetMapping("/deleteBoard")
	public void deleteBoard(HttpServletRequest request, Map<String,Object> map) {

		String id = request.getParameter("id");

		map.put("id", id);

		boardService.deleteBoard(map);
	}

	@GetMapping("/updateBoard")
	public void updateBoard(HttpServletRequest request, Map<String,Object> map) {

		String id = request.getParameter("id");

		map.put("id", id);

		boardService.updateBoard(map);
	}

	@PostMapping("/insertBoard")
	public String insertBoard(@RequestParam Map<String,Object> map) {

		boardService.insertBoard(map);

		return "redirect:/board";
	}

	@GetMapping("/boardView")
	public String boardView(HttpServletRequest request, Map<String,Object> map) {
		return "/boardView";
	}


}
