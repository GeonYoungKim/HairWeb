package skuniv.ac.kr.contoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import skuniv.ac.kr.service.DesignerService;
import skuniv.ac.kr.dao.DesignerDao;
import java.util.ArrayList;

@Controller
public class DesignerController {
	
	@Resource(name = "DesignerService")
	private DesignerService designerService;
	
	@RequestMapping(value = "/Designer")
	public String studentList8(HttpServletRequest request) throws Exception {
		
		List<Map<String, Object>> designerList = designerService.selectDesignerList();
		request.setAttribute("designerList", designerList);	
		
		return "designer/designer";
	}
	
	@RequestMapping(value = "/Designerprofile")
	public String studentList78(HttpServletRequest request) throws Exception {
		List<Map<String, Object>> selectSearchHair=designerService.selectSearchHair(Integer.parseInt(request.getParameter("dnum")));		
		List<Map<String, Object>> designerList = designerService.selectDesignerList();
		request.setAttribute("designerList", designerList);	
		request.setAttribute("selectSearchHair", selectSearchHair);
		return "designer/designerprofile";
	}
}
