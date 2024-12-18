package com.pipe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	@GetMapping("/")
	public String indexPage(Model model) {
		model.addAttribute("title","송유선");
		model.addAttribute("contentPath","/WEB-INF/views/index.jsp");
		return "common/layout";
	}

    @GetMapping("/page")
    public String dynamicPage(@RequestParam("pageName") String pageName, Model model) {
    	model.addAttribute("title", "송유선");

    	// # 1. 입력값에 ../나 /이 포함되면 보안 문제 발생. 이를 방지
    	String sanitizedPageName = sanitizePath(pageName);

    	// # 2. / 기반 경로 처리로 개선

    	String[] splitPageName = pageName.split("_");
    	String contentPath = "/WEB-INF/views/" + String.join("/", splitPageName) + ".jsp";

    	model.addAttribute("contentPath", contentPath);

        return "common/layout";
    }

    private String sanitizePath(String input) {
        // 경로 탐색(../) 방지
        String sanitized = input.replaceAll("\\.\\.|/", "");
        return sanitized;
    }
}
