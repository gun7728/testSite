package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.EventService;
import com.test.vo.TestEventVO;

@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;

	@RequestMapping(value="/event.do",method=RequestMethod.GET)
	public ModelAndView event(String rpage) {
		return eventService.getList(rpage);
	}
	
	@RequestMapping(value="/delete.do",method=RequestMethod.GET)
	public ModelAndView delete(String eid) {
		return eventService.getResultDelete(eid);
	}
	
	@RequestMapping(value="/event_page.do",method=RequestMethod.GET)
	public ModelAndView event_page(String id) {
		return (ModelAndView)eventService.getContent(id);
	}
	

	@RequestMapping(value = "/event_write.do", method = RequestMethod.GET)
	public String board_write(){
		return "event_write";
	}
	
	@RequestMapping(value = "/event_write_proc.do", method = RequestMethod.POST)
	public ModelAndView event_write_proc(TestEventVO vo,HttpServletRequest request){
		return (ModelAndView)eventService.getResultWrite(vo,request);
	}
	
	
}

