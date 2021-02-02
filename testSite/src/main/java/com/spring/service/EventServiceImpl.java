package com.spring.service;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

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
	
	public ModelAndView getList(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		int start = 0;
		int end = 0;
		int pageSize = 5; //�� �������� ��µǴ� row
		int pageCount = 1; //��ü ������ ��  : ��ü ����Ʈ row /�� �������� ��µǴ� row
		int dbCount = eventDAO.getListCount(); //DB���� �� ��ü�ο�� ���
		int reqPage = 1; //��û������
		
		//2-2. ��ü������ �� ���ϱ� - ȭ�����
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end �� ���ϱ�
		if(rpage != null){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}
		ArrayList<TestEventVO> list = eventDAO.getList(start,end);
		
		mv.addObject("list", list);
		mv.addObject("dbCount", dbCount);
		mv.addObject("pageSize", pageSize);
		mv.addObject("reqPage", reqPage);
		mv.setViewName("event");

		return mv;
	}

	public Object getContent(String id) {
		ModelAndView mv = new ModelAndView();
		TestEventVO vo = eventDAO.getContent(id);
		mv.addObject("vo", vo);
		mv.setViewName("event_page");

		return mv;
	}
	
	public Object getUpdate(String id) {		
		ModelAndView mv = new ModelAndView();
		TestEventVO vo = eventDAO.getContent(id);
		mv.addObject("vo", vo);
		mv.setViewName("event_update");

		return mv;
	}


	public Object getResultWrite(Object vo,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		TestEventVO evo = (TestEventVO) vo;
		
		
		if(evo.getFile1().getSize()!=0 || evo.getFile2().getSize()!=0 ) {
			//파일존재
			//1. efile, esfile 이름 생성 -->vo.set~
			UUID uuid = UUID.randomUUID();	//서버에 저장되는 파일이름 중복방지(esfile)
			
			evo.setEfile(evo.getFile1().getOriginalFilename());
			evo.setEsfile(uuid+"_"+evo.getFile1().getOriginalFilename());

			evo.setEfile_t(evo.getFile2().getOriginalFilename());
			evo.setEsfile_t(uuid+"_"+evo.getFile2().getOriginalFilename());
			
			//2. DB 저장 
			boolean result = eventDAO.getInsert(evo);
			
			if(result) {
				String root_path = request.getSession().getServletContext().getRealPath("/");
				String attach_path = "\\resources\\upload\\";
				
				try {
					File file = new File(root_path+attach_path+evo.getEsfile());
					File file_t = new File(root_path+attach_path+evo.getEsfile_t());
					evo.getFile1().transferTo(file);
					evo.getFile2().transferTo(file_t);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				
				mv.setViewName("redirect:/event.do");
			}else {
				
			}
		}
		
		return mv;
	}


	public Object getResultUpdate(Object vo,HttpServletRequest request,String eid) {	
		ModelAndView mv = new ModelAndView();
		TestEventVO evo = (TestEventVO) vo;
		evo.setEid(eid);
		
		if(evo.getFile1().getSize()!=0 || evo.getFile2().getSize()!=0 ) {
			//파일존재
			//1. efile, esfile 이름 생성 -->vo.set~
			UUID uuid = UUID.randomUUID();	//서버에 저장되는 파일이름 중복방지(esfile)
			
			evo.setEfile(evo.getFile1().getOriginalFilename());
			evo.setEsfile(uuid+"_"+evo.getFile1().getOriginalFilename());

			evo.setEfile_t(evo.getFile2().getOriginalFilename());
			evo.setEsfile_t(uuid+"_"+evo.getFile2().getOriginalFilename());
			
			//2. DB 저장 
			boolean result = eventDAO.getUpdate(evo);
			
			if(result) {
				String root_path = request.getSession().getServletContext().getRealPath("/");
				String attach_path = "\\resources\\upload\\";
				
				try {
					File file = new File(root_path+attach_path+evo.getEsfile());
					File file_t = new File(root_path+attach_path+evo.getEsfile_t());
					evo.getFile1().transferTo(file);
					evo.getFile2().transferTo(file_t);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				
				mv.setViewName("redirect:/event.do");
			}else {
				
			}
		}
		
		return mv;
	}

	@Override
	public ModelAndView getResultDelete(String eid) {
		ModelAndView mv = new ModelAndView();
		
		//String bid = request.getParameter("bid");
		//CgvBoardDAO dao = new CgvBoardDAO();
		boolean result = eventDAO.getDelete(eid);
		
		if(result){
			mv.setViewName("redirect:/event.do");
		}else{
			mv.setViewName("errorPage");
		}
		return mv;
	}
	



}
