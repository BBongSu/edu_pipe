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
        model.addAttribute("contentPath", "/WEB-INF/views/" + pageName.split("_")[0] + "/" + pageName + ".jsp");
        return "common/layout";
    }
}