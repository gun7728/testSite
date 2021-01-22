package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.EventService;

@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;

	@RequestMapping(value="/event.do",method=RequestMethod.GET)
	public ModelAndView event() {
		System.out.println((ModelAndView)eventService.getList());
		return (ModelAndView)eventService.getList();
	}
	
	@RequestMapping(value="/event_page.do",method=RequestMethod.GET)
	public ModelAndView event_page(String id) {
		return (ModelAndView)eventService.getContent(id);
	}
}
