package skuniv.ac.kr.contoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;

import model.QnAVO;
import skuniv.ac.kr.service.QnAService;

@Controller
public class QnAController {
	List<Map<String,Object>> QnA_search_list;

	@Resource(name = "QnAService")
	private QnAService qnaService;

	@RequestMapping(value = "/")
	public String MainPage(HttpServletRequest request) throws Exception {
		return "MainPage";
	}

	@RequestMapping(value = "/QnA")
	public String QnA(HttpServletRequest request) throws Exception {
		int QnA_page_num = 0;
		try {
			QnA_page_num=Integer.parseInt(request.getParameter("QnA_page_num"));			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		List<Map<String, Object>> QnA_list = qnaService.selectQnAList();
		request.setAttribute("QnA_list", QnA_list);	
		request.setAttribute("QnA_page_num", QnA_page_num);	
		return "QnA/QnA";
	}
	@RequestMapping(value = "/insert_QnA_view")
	public String insert_QnA_view(HttpServletRequest request) throws Exception {
		int QnA_page_num = 0;
		try {
			QnA_page_num=Integer.parseInt(request.getParameter("QnA_page_num"));			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		List<Map<String, Object>> QnA_list = qnaService.selectQnAList();
		request.setAttribute("QnA_list", QnA_list);	
		request.setAttribute("QnA_page_num", QnA_page_num);	
		return "QnA/insert_QnA_view";
	}
	@RequestMapping(value = "/QnA_insert")
	public String QnA_insert(HttpServletRequest request) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("QnA_preface", request.getParameter("QnA_preface"));
		map.put("QnA_title", request.getParameter("QnA_title"));
		map.put("QnA_body", request.getParameter("QnA_body"));
		map.put("QnA_writer", request.getParameter("QnA_writer"));
    	qnaService.insertQnA(map);
		return "redirect:/QnA";
	}
	@RequestMapping(value = "/QnA_one_view")
	public String QnA_one_view(HttpServletRequest request) throws Exception {			
		Map<String, Object> QnA_one=qnaService.getQnA(Integer.parseInt(request.getParameter("QnA_no")));		
		Map<String, Object> Answer_one=qnaService.getAnswer(Integer.parseInt(request.getParameter("QnA_no")));
		
		request.setAttribute("QnA_one", QnA_one);
		request.setAttribute("Answer_one", Answer_one);
		return "QnA/QnA_one_view";
	}
	@RequestMapping(value = "/QnA_search")
	public String QnA_search(HttpServletRequest request) throws Exception {
		int QnA_page_num = 0;
		String select=request.getParameter("select");		
		String search=request.getParameter("search");
		try {
			QnA_page_num=Integer.parseInt(request.getParameter("QnA_page_num"));			
		
		}catch (Exception e) {
			// TODO: handle exception
		}		
		if(select!=null&&search!=null) {
			QnA_search_list= qnaService.select_search_QnAlist(select,search);
		}
		
		request.setAttribute("QnA_search_list", QnA_search_list);
		request.setAttribute("QnA_page_num", QnA_page_num);
		return "QnA/QnA_search";
		
	}
	@RequestMapping(value = "/reservation")
	public String reservation(HttpServletRequest request) throws Exception {
		System.out.println("reservation");
		return "reservation/reservation";
	}
	@RequestMapping(value = "/reservation_select_day")
	public void reservation_select_day(HttpServletRequest request) throws Exception {
		System.out.println("reservation_select_day");
		String y=request.getParameter("y");
		String m=request.getParameter("m");
		String d=request.getParameter("d");
		System.out.println(y+"-"+m+"-"+d);
		
	}

}
