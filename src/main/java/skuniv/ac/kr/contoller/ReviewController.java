package skuniv.ac.kr.contoller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import skuniv.ac.kr.service.ReviewService;
import model.ReviewVO;
import skuniv.ac.kr.dao.ReviewDao;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ReviewController {
	private ReviewDao dao;
	
	@Resource(name = "ReviewService")
	private ReviewService reviewService;
	
	@RequestMapping(value = "/Review")
	public String studentList8(HttpServletRequest request) throws Exception {
		return "review";
	}
	
	@RequestMapping(value = "/ReviewAdd")
	public String studentList28(HttpServletRequest request) throws Exception {
		return "reviewadd";
	}
	@RequestMapping(value = "/ReviewAddCheck")
	public String studentList228(HttpServletRequest request) throws Exception {
		return "reviewaddcheck";
	}
	
	@RequestMapping(value = "/ReviewHair")
	public String studentList2228(HttpServletRequest request) throws Exception {
		return "reviewhair";
	}
}
