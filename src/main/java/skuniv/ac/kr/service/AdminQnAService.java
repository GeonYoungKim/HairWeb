package skuniv.ac.kr.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import skuniv.ac.kr.dao.AdminQnADao;
import skuniv.ac.kr.dao.QnADao;

@Service("AdminQnAService")
public class AdminQnAService {
	@Resource(name = "AdminQnADao")
	private AdminQnADao adminQnADao;

}
