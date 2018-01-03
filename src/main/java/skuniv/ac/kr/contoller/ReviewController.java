package skuniv.ac.kr.contoller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import skuniv.ac.kr.service.ReviewService;
import model.ReviewVO;
import skuniv.ac.kr.dao.ReviewDao;
import java.util.ArrayList;

@Controller
public class ReviewController {
	List<Map<String,Object>> Review_search_list;
	
	@Resource(name = "ReviewService")
	private ReviewService reviewService;
	
	@RequestMapping(value = "/Review")
	public String Review(HttpServletRequest request) throws Exception {
		List<Map<String, Object>> Review_List = reviewService.selectReviewList();
		List<Map<String, Object>> Hair_List = reviewService.selectHairList();
		request.setAttribute("Review_List", Review_List);	
		request.setAttribute("Hair_List", Hair_List);	
		
		return "review/review";
	}
	
	@RequestMapping(value = "/ReviewHair")
	public String studentList2228(HttpServletRequest request) throws Exception {
		return "review/reviewhair";
	}
}
