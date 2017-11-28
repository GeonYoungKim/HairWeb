package skuniv.ac.kr.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import skuniv.ac.kr.dao.AdminDao;
import skuniv.ac.kr.dao.ClientDao;

@Service("AdminService")
public class AdminService {
	@Resource(name = "AdminDao")
	private AdminDao adminDao;

}
