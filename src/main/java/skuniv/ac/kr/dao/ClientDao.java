package skuniv.ac.kr.dao;

import org.springframework.stereotype.Repository;

import skuniv.ac.kr.connect.ConnectDB;

@SuppressWarnings("unchecked")
@Repository("ClientDao")
public class ClientDao extends ConnectDB{

	public String getItemPrice(int id) {
		return ((String)selectOne("client.selectStudentPassword",id));
	}
}
