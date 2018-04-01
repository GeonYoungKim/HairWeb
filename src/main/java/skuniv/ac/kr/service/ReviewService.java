package skuniv.ac.kr.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import skuniv.ac.kr.dao.ReviewDao;

@Service("ReviewService")
public class ReviewService {
	@Resource(name = "ReviewDao")
	private ReviewDao reviewDao;

	public List<Map<String, Object>> selectReviewList() {
		
		return reviewDao.selectReviewList();
	}
	
	public List<Map<String, Object>> selectHairList() {
		
		return reviewDao.selectHairList();
	}
	public List<Map<String, Object>> getHair(int r_num) {
		// TODO Auto-generated method stub
		return reviewDao.getHair(r_num);
	}
	public List<Map<String,Object>> selectSearchDesigner(int r_num) {
		// TODO Auto-generated method stub
		return reviewDao.selectSearchDesigner(r_num);
	}
}
