package skuniv.ac.kr.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import skuniv.ac.kr.connect.ConnectDB;

@SuppressWarnings("unchecked")
@Repository("DesignerDao")
public class DesignerDao extends ConnectDB{

	public Map<String,Object> getDesignerByName(String designer) {
		// TODO Auto-generated method stub
		return (Map<String,Object>)selectOne("designer.getdesigner_by_name", designer);
	}

	
	public List<Map<String, Object>> selectDesignerList() {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("designer.selectdesignerList");
	}
	
	public List<Map<String,Object>> selectSearchHair(int dnum) {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("designer.select_search_hair", dnum);

	}


	public Map<String, Object> getNum(int rdesignernum) {
		
		return (Map<String,Object>)selectOne("designer.getdesigner_dnum", rdesignernum);
	}
}
