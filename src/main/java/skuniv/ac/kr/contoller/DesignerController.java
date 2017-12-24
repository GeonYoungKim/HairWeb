package skuniv.ac.kr.contoller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import skuniv.ac.kr.service.DesignerService;

@Controller
public class DesignerController {
	
	@Resource(name = "DesignerService")
	private DesignerService designerService;
	
	@RequestMapping(value = "/Designer")
	public String studentList8(HttpServletRequest request) throws Exception {
		return "designer";
	}
	
	@RequestMapping(value = "/Designerprofile")
	public String studentList78(HttpServletRequest request) throws Exception {
		return "designerprofile";
	}
}
