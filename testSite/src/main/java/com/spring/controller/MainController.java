package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value="/index.do",method=RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/youtube.do",method=RequestMethod.GET)
	public String youtube() {
		return "youtube";
	}
	@RequestMapping(value="/map.do",method=RequestMethod.GET)
	public String map() {
		return "map";
	}
}
