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
<<<<<<< HEAD

	public Map<String, Object> getNum(int rdesignernum) {
		
		return (Map<String,Object>)selectOne("designer.getdesigner_dnum", rdesignernum);
	}
=======
>>>>>>> parent of 1948bc4... 예약하기 버튼 클릭 시 모든 절차가 완성되 고객 예약 완료함, 동시에 해당 디자이너에게 예약 문자 전송
}
