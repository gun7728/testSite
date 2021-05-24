package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
		
	@RequestMapping(value="/question.do",method=RequestMethod.GET)
	public String question() {
		return "question";
	}
	@RequestMapping(value="/map.do",method=RequestMethod.GET)
	public String map() {
		return "map";
	}
	@RequestMapping(value="/youtube.do",method=RequestMethod.GET)
	public String youtube() {
		return "youtube";
	}
	
	
}
