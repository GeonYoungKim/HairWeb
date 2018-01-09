package skuniv.ac.kr.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TreeMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import model.Designer;
import model.Reservation;
import skuniv.ac.kr.dao.DesignerDao;
import skuniv.ac.kr.dao.QnADao;
import skuniv.ac.kr.dao.ReservationDao;

@Service("ReservationService")
public class ReservationService {
	@Resource(name = "ReservationDao")
	private ReservationDao reservationDao;
	
	@Resource(name = "DesignerDao")
	private DesignerDao designerDao;
	
	private int swich=0;
	
	private String[] reservation_times={"09:00","09:30","10:00","10:30","11:00","11:30","12:00","12:30","13:00","13:30"
			,"14:00","14:30","15:00","15:30","16:00","16:30","17:00","17:30","18:00","18:30","19:00","19:30"
			,"20:00","20:30"};
	
	public void init_reservation_map(Map<String,String> reservation_map ){
		
		for(int i=0;i<reservation_times.length;i++) {
			reservation_map.put(reservation_times[i], "°¡´É");			
		}
		
	}

	public Map<String,Map<String, String>> select_reservation_possible_map(String select_date) {
		Map<String,Map<String, String>> reservation_possible_map=new TreeMap<String,Map<String, String>>();		
		Map<String,String> reservation_map=new TreeMap<>();		
		
		
		List<Map<String, Object>> designer_list=designerDao.select_designer_List();
		List<Map<String, Object>> reservation_list=reservationDao.select_reservation_list(select_date);
		
				
		for(int i=0;i<designer_list.size();i++) {
			reservation_map=new TreeMap<>();		 
			init_reservation_map(reservation_map);
			for(int j=0;j<reservation_list.size();j++) {
				if(designer_list.get(i).get("dnum").equals(reservation_list.get(j).get("rdesignernum"))) {	
					String[] today_reservation_time=((String)reservation_list.get(j).get("rdate")).split("/");
					String[] today_start_end_reservation_time=today_reservation_time[1].split("~");
					for(String time:reservation_map.keySet()) {
						if(time.equals(today_start_end_reservation_time[0])){
							swich=1;							
						}
						if(time.equals(today_start_end_reservation_time[1])){
							
							swich=0;							
						}
						if(swich==1) {
							reservation_map.put(time, "ºÒ°¡´É");
						}
					}
				}
			}				
			reservation_possible_map.put((String) designer_list.get(i).get("dname"), reservation_map);
		}
		
		return reservation_possible_map;
	}

	public Reservation set_before_input_customer(String cut, String dye, String pum, String date, String st,String et,String designer) {
		Reservation reservation=new Reservation();
		String choice_hair_list="";
		int item_num=0;
		String date_time=date+"/"+st+"~"+et;
		Map<String,Object> designer_map=designerDao.getDesigner_by_name(designer);
		
		reservation.setRdesignernum((int)designer_map.get("dnum"));
		reservation.setRdate(date_time);
		
		if(cut.equals("true")) {
			choice_hair_list+="Ä¿Æ®-";
		}
		if(dye.equals("true")) {
			choice_hair_list+="¿°»ö-";
		}
		if(pum.equals("true")) {
			choice_hair_list+="Æß-";
		}
		
		reservation.setRitem(choice_hair_list);
		reservationDao.insert_before_cusphone_reservation(reservation);
		
		reservation=reservationDao.getReservation_by_dnum_rdate(reservation);
		
		
		return reservation;
	}

}
