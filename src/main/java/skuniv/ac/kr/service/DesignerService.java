package skuniv.ac.kr.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import skuniv.ac.kr.dao.DesignerDao;

@Service("DesignerService")
public class DesignerService {
	@Resource(name = "DesignerDao")
	private DesignerDao designerDao;

}
