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
	List<Map<String,Object>> reviewSearchList;
	
	@Resource(name = "ReviewService")
	private ReviewService reviewService;
	
	@RequestMapping(value = "/Review")
	public String Review(HttpServletRequest request) throws Exception {
		List<Map<String, Object>> reviewList = reviewService.selectReviewList();
		List<Map<String, Object>> hairList = reviewService.selectHairList();
		request.setAttribute("reviewList", reviewList);	
		request.setAttribute("hairList", hairList);	
		
		return "review/review";
	}
	
	@RequestMapping(value = "/ReviewHair")
	public String reviewHair(HttpServletRequest request) throws Exception {
		List<Map<String, Object>> reviewHair=reviewService.getHair(Integer.parseInt(request.getParameter("r_num")));	
		List<Map<String, Object>> selectSearchDesigner=reviewService.selectSearchDesigner(Integer.parseInt(request.getParameter("r_num")));	
		
		request.setAttribute("reviewHair", reviewHair);
		request.setAttribute("selectSearchDesigner", selectSearchDesigner);
		
		return "review/reviewhair";
	}
}
