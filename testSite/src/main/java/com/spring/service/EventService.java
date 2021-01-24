package com.spring.service;

import javax.servlet.http.HttpServletRequest;

public interface EventService {
	Object getList();
	Object getContent(String id);
	Object getResultWrite(Object vo,HttpServletRequest request);
	Object getUpdate(String id);
	Object getResultUpdate(Object vo);
	Object getResultDelete(String id);
}
