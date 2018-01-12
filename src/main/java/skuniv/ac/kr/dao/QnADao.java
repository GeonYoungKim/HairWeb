package skuniv.ac.kr.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import model.QnAVO;
import skuniv.ac.kr.connect.ConnectDB;

@SuppressWarnings("unchecked")
@Repository("QnADao")
public class QnADao extends ConnectDB{

	public List<Map<String, Object>> selectQnAList() {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("qna.selectQnAList");
	}

	public void insertQnA(Map<String, Object> map) {
		// TODO Auto-generated method stub
		insert("qna.insertQnA",map);
	}

	public Map<String, Object> getQnA(int qnA_no) {
		// TODO Auto-generated method stub
		return (Map<String,Object>)selectOne("qna.getQnA",qnA_no);
	}

	public Map<String, Object> getAnswer(int qnA_no) {
		// TODO Auto-generated method stub
		return (Map<String,Object>)selectOne("qna.getAnswer",qnA_no);
	}

	public List<Map<String,Object>> select_search_title_QnAlist(String search) {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("qna.select_search_title_QnAlist",search);
	}
	public List<Map<String,Object>> select_search_content_QnAlist(String search) {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("qna.select_search_content_QnAlist",search);
	}
	public List<Map<String,Object>> select_search_writer_QnAlist(String search) {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("qna.select_search_writer_QnAlist",search);
	}
}
