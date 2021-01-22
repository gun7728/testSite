package com.spring.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.test.dao.TestEventDAO;
import com.test.vo.TestEventVO;

@Service("eventService")
public class EventServiceImpl implements EventService {

	@Autowired
	private TestEventDAO eventDAO;
	
	@Override
	public ModelAndView getList() {
		ModelAndView mv = new ModelAndView();
		ArrayList<TestEventVO> list = eventDAO.getList();
		mv.addObject("list", list);
		mv.setViewName("event");

		return mv;
	}

	@Override
	public Object getContent(String id) {
		ModelAndView mv = new ModelAndView();
		TestEventVO vo = eventDAO.getContent(id);
		mv.addObject("vo", vo);
		mv.setViewName("event_page");

		return mv;
	}

	@Override
	public Object getResultWrite(Object vo, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getUpdate(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getResultUpdate(Object vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getResultDelete(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
