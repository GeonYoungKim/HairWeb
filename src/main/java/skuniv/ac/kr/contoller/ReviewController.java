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
	public String reviewHair(HttpServletRequest request) throws Exception {
		List<Map<String, Object>> review_hair=reviewService.getHair(Integer.parseInt(request.getParameter("r_num")));	
		List<Map<String, Object>> select_search_designer=reviewService.select_search_designer(Integer.parseInt(request.getParameter("r_num")));	
		
		request.setAttribute("review_hair", review_hair);
		request.setAttribute("select_search_designer", select_search_designer);
		
		return "review/reviewhair";
	}
}
