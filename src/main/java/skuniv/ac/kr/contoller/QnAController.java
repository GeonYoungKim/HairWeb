package skuniv.ac.kr.contoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import javax.annotation.Resource;



import skuniv.ac.kr.service.QnAService;

@Controller
public class QnAController {
	List<Map<String,Object>> qnaSearchList;

	@Resource(name = "QnAService")
	private QnAService qnaService;

	@RequestMapping(value = "/")
	public String MainPage(HttpServletRequest request) throws Exception {
		return "MainPage";
	}

	@RequestMapping(value = "/QnA")
	public String QnA(HttpServletRequest request) throws Exception {
		int qnaPageNum = 0;
		try {
			qnaPageNum=Integer.parseInt(request.getParameter("QnA_page_num"));			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		List<Map<String, Object>> qnaList = qnaService.selectQnAList();
		request.setAttribute("qnaList", qnaList);	
		request.setAttribute("qnaPageNum", qnaPageNum);	
		return "QnA/QnA";
	}
	@RequestMapping(value = "/insert_QnA_view")
	public String insert_QnA_view(HttpServletRequest request) throws Exception {
		int qnaPageNum = 0;
		try {
			qnaPageNum=Integer.parseInt(request.getParameter("QnA_page_num"));			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		List<Map<String, Object>> qnaList = qnaService.selectQnAList();
		request.setAttribute("qnaList", qnaList);	
		request.setAttribute("qnaPageNum", qnaPageNum);	
		return "QnA/insert_QnA_view";
	}
	@RequestMapping(value = "/QnA_insert")
	public String QnA_insert(HttpServletRequest request) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("qnaPreface", request.getParameter("QnA_preface"));
		map.put("qnaTitle", request.getParameter("QnA_title"));
		map.put("qnaBody", request.getParameter("QnA_body"));
		map.put("qnaWriter", request.getParameter("QnA_writer"));
    	qnaService.insertQnA(map);
		return "redirect:/QnA";
	}
	@RequestMapping(value = "/QnA_one_view")
	public String QnA_one_view(HttpServletRequest request) throws Exception {			
		Map<String, Object> qnaOne=qnaService.getQnA(Integer.parseInt(request.getParameter("QnA_no")));		
		Map<String, Object> answerOne=qnaService.getAnswer(Integer.parseInt(request.getParameter("QnA_no")));
		
		request.setAttribute("qnaOne", qnaOne);
		request.setAttribute("answerOne", answerOne);
		return "QnA/QnA_one_view";
	}
	@RequestMapping(value = "/QnA_search")
	public String QnA_search(HttpServletRequest request) throws Exception {
		int qnaPageNum = 0;
		String select=request.getParameter("select");		
		String search=request.getParameter("search");
		try {
			qnaPageNum=Integer.parseInt(request.getParameter("QnA_page_num"));			
		
		}catch (Exception e) {
			// TODO: handle exception
		}		
		if(select!=null&&search!=null) {
			qnaSearchList= qnaService.selectSearchQnaList(select,search);
		}
		
		request.setAttribute("qnaSearchList", qnaSearchList);
		request.setAttribute("qnaPageNum", qnaPageNum);
		return "QnA/QnA_search";
		
	}
	

}
