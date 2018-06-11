package skuniv.ac.kr.contoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import javax.annotation.Resource;



import skuniv.ac.kr.service.QnAService;

@Controller
public class QnAController {
	

	@Resource(name = "QnAService")
	private QnAService qnaService;

	@GetMapping(value = "/")
	public String MainPage(HttpServletRequest request) throws Exception {
		return "MainPage";
	}

	@GetMapping(value = "/QnA")
	public ModelAndView QnA(HttpServletRequest request,ModelAndView modelAndView,@RequestParam("QnA_page_num") int quaPageNum) throws Exception {
		modelAndView.setViewName("QnA/QnA");
		
		List<Map<String, Object>> qnaList = qnaService.selectQnAList();
		modelAndView.addObject("qnaList", qnaList);
		modelAndView.addObject("qnaPageNum",quaPageNum);	
		return modelAndView;
	}
	@GetMapping(value = "/insert_QnA_view")
	public ModelAndView insert_QnA_view(ModelAndView modelAndView) throws Exception {
		modelAndView.setViewName("QnA/insert_QnA_view");
		return modelAndView;
	}
	@PostMapping(value = "/QnA_insert")
	public void QnA_insert(@RequestBody Map<String, Object> data) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("qnaPreface", data.get("writer").toString());
		map.put("qnaTitle",  data.get("body").toString());
		map.put("qnaBody",  data.get("preface").toString());
		map.put("qnaWriter", data.get("title").toString());
    	qnaService.insertQnA(map);
		
	}
	@GetMapping(value = "/QnA_one_view")
	public ModelAndView QnA_one_view(ModelAndView modelAndView,@RequestParam("QnA_no") int no) throws Exception {
		modelAndView.setViewName("QnA/QnA_one_view");
		Map<String, Object> qnaOne=qnaService.getQnA(no);		
		Map<String, Object> answerOne=qnaService.getAnswer(no);
		
		modelAndView.addObject("qnaOne", qnaOne);
		modelAndView.addObject("answerOne", answerOne);
		return modelAndView;
	}
	@GetMapping(value = "/QnA_search")
	public ModelAndView QnA_search(ModelAndView modelAndView,@RequestParam("select") String selectParam,@RequestParam("search") String searchtParam) throws Exception {
		modelAndView.setViewName("QnA/QnA_search");
		String select=selectParam;		
		String search=searchtParam;
				
		if(select!=null&&search!=null) {
			List<Map<String,Object>> qnaSearchList= qnaService.selectSearchQnaList(select,search);
			modelAndView.addObject("qnaSearchList", qnaSearchList);
		}
		
		return modelAndView;
		
	}
	

}
