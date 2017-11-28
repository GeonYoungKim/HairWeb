package skuniv.ac.kr.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import skuniv.ac.kr.dao.ClientDao;


@Service("ClientService")
public class ClientService {
	@Resource(name = "ClientDao")
	private ClientDao clientDao;

	public String getItemPrice(int id) {
		return clientDao.getItemPrice(id);
	}

}
