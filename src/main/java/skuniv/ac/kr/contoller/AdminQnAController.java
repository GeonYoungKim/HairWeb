package skuniv.ac.kr.contoller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import skuniv.ac.kr.service.AdminQnAService;



@Controller
public class AdminQnAController {
	@Resource (name = "AdminQnAService")
	private AdminQnAService adminQnAService;

}
