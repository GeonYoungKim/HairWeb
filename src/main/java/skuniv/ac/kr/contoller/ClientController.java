package skuniv.ac.kr.contoller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import skuniv.ac.kr.service.ClientService;

@Controller
public class ClientController {
	
	@Resource(name = "ClientService")
	private ClientService clientService;
	
	@RequestMapping(value = "/test")
	public String studentList(HttpServletRequest request) throws Exception {
		System.out.println("test");
		int id=Integer.parseInt(request.getParameter("id"));
		String item_price=clientService.getItemPrice(id);
		System.out.println(item_price);
		return "home";
	}
	
	@RequestMapping(value = "/")
	public String studentList8(HttpServletRequest request) throws Exception {
		return "home";
	}
}
