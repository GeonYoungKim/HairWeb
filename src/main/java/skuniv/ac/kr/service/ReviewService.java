package skuniv.ac.kr.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import skuniv.ac.kr.dao.ReviewDao;

@Service("ReviewService")
public class ReviewService {
	@Resource(name = "ReviewDao")
	private ReviewDao reviewDao;

}
