package skuniv.ac.kr.contoller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import skuniv.ac.kr.service.AdminService;



@Controller
public class AdminController {
	@Resource(name = "AdminService")
	private AdminService adminService;

}
