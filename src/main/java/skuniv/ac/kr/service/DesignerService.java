package skuniv.ac.kr.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import skuniv.ac.kr.dao.DesignerDao;

@Service("DesignerService")
public class DesignerService {
	@Resource(name = "DesignerDao")
	private DesignerDao designerDao;
	
	public List<Map<String, Object>> selectdesignerList() {
		
		return designerDao.selectdesignerList();
	}

}
