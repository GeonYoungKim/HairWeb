package skuniv.ac.kr.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import skuniv.ac.kr.connect.ConnectDB;

@SuppressWarnings("unchecked")
@Repository("DesignerDao")
public class DesignerDao extends ConnectDB{
	
	public List<Map<String, Object>> selectdesignerList() {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("designer.selectdesignerList");
	}

}
