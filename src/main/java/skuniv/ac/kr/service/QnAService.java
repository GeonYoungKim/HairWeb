package skuniv.ac.kr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import skuniv.ac.kr.dao.QnADao;


@Service("QnAService")
public class QnAService {
	@Resource(name = "QnADao")
	private QnADao qnaDao;

	public List<Map<String, Object>> selectQnAList() {
		
		return qnaDao.selectQnAList();
	}

	public void insertQnA(Map<String, Object> map) {
		// TODO Auto-generated method stub
		qnaDao.insertQnA(map);
		
	}

	public Map<String, Object> getQnA(int QnA_no) {
		// TODO Auto-generated method stub
		return qnaDao.getQnA(QnA_no);
	}

	public Map<String, Object> getAnswer(int QnA_no) {
		// TODO Auto-generated method stub
		return qnaDao.getAnswer(QnA_no);
	}

	public List<Map<String,Object>> selectSearchQnaList(String select, String search) {
		// TODO Auto-generated method stub
		
		if("title".equals(select)) {
			System.out.println(select);
			return qnaDao.selectSearchTitleQnaList(search);
		}else if("content".equals(select)) {
			System.out.println(select);
			return qnaDao.selectSearchContentQnaList(search);
		}else {
			System.out.println(select);
			return qnaDao.selectSearchWriterQnaList(search);
		}
		
	}

	
}
