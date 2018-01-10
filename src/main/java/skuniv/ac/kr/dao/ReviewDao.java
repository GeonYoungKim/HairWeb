package skuniv.ac.kr.dao;

import org.springframework.stereotype.Repository;

import skuniv.ac.kr.connect.ConnectDB;
import model.ReviewVO;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@SuppressWarnings("unchecked")
@Repository("ReviewDao")
public class ReviewDao extends ConnectDB{
	public List<Map<String, Object>> selectReviewList() {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("review.selectReviewList");
	}
	
	public List<Map<String, Object>> selectHairList() {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("review.selectHairList");
	}
	public List<Map<String, Object>> getHair(int r_num) {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("review.getHair",r_num);
	}
	
	public List<Map<String,Object>> select_search_designer(int r_num) {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("review.select_search_designer", r_num);
	}
}
