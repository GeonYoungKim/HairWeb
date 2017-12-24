package skuniv.ac.kr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import skuniv.ac.kr.dao.DesignerDao;
import skuniv.ac.kr.dao.QnADao;
import skuniv.ac.kr.dao.ReservationDao;

@Service("ReservationService")
public class ReservationService {
	@Resource(name = "ReservationDao")
	private ReservationDao reservationDao;
	
	@Resource(name = "DesignerDao")
	private DesignerDao designerDao;
	
	String[] reservation_times={"09:00","09:30","10:00","10:30","11:00","11:30","12:00","12:30","13:00","13:30"
			,"14:00","14:30","15:00","15:30","16:00","16:30","17:00","17:30","18:00","18:30","19:00","19:30"
			,"20:00","20:30"};
	
	public void init_reservation_map(Map<String,String> reservation_map ){
		
		for(int i=0;i<reservation_times.length;i++) {
			
			if(i%2==0) {
				reservation_map.put(reservation_times[i], "가능");
			}else {
				reservation_map.put(reservation_times[i], "불가능");
			}
		}
		
	}

	public Map<String,Map<String, String>> select_reservation_possible_map() {
		Map<String,Map<String, String>> reservation_possible_map=new HashMap<String,Map<String, String>>();
		
		Map<String,String> reservation_map=new TreeMap<>();
		
		init_reservation_map(reservation_map);
		
		
		
		
		
		List<Map<String, Object>> designer_list=designerDao.select_designer_List();
		List<Map<String, Object>> reservation_list=reservationDao.select_reservation_list();
		
		for(int i=0;i<designer_list.size();i++) {
			reservation_possible_map.put((String) designer_list.get(i).get("dname"), reservation_map);
		}
		
		return reservation_possible_map;
	}

}
