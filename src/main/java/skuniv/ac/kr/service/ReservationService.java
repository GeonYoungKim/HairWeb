package skuniv.ac.kr.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TreeMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import model.DesignerVO;
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
	
	private String[] reservationTimes={"09:00","09:30","10:00","10:30","11:00","11:30","12:00","12:30","13:00","13:30"
			,"14:00","14:30","15:00","15:30","16:00","16:30","17:00","17:30","18:00","18:30","19:00","19:30"
			,"20:00","20:30"};
	
	public void initReservationMap(Map<String,String> reservation_map ){
		
		for(int i=0;i<reservationTimes.length;i++) {
			reservation_map.put(reservationTimes[i], "가능");			
		}
		
	}

	public Map<String,Map<String, String>> selectReservationPossibleMap(String selectDate) {
		Map<String,Map<String, String>> reservationPossibleMap=new TreeMap<String,Map<String, String>>();		
		Map<String,String> reservationMap=new TreeMap<>();		
		
		
		List<Map<String, Object>> designerList=designerDao.selectDesignerList();
		List<Map<String, Object>> reservationList=reservationDao.selectReservationList(selectDate);
		
				
		for(int i=0;i<designerList.size();i++) {
			reservationMap=new TreeMap<>();		 
			initReservationMap(reservationMap);
			for(int j=0;j<reservationList.size();j++) {
				if(designerList.get(i).get("dnum").equals(reservationList.get(j).get("rdesignernum"))) {	
					String[] todayReservationTime=((String)reservationList.get(j).get("rdate")).split("/");
					String[] todayStartEndReservationTime=todayReservationTime[1].split("~");
					for(String time:reservationMap.keySet()) {
						if(time.equals(todayStartEndReservationTime[0])){
							swich=1;							
						}
						if(time.equals(todayStartEndReservationTime[1])){
							
							swich=0;							
						}
						if(swich==1) {
							reservationMap.put(time, "불가능");
						}
					}
				}
			}				
			reservationPossibleMap.put((String) designerList.get(i).get("dname"), reservationMap);
		}
		
		return reservationPossibleMap;
	}

	public Reservation setBeforeInputCustomer(String cut, String dye, String pum, String date, String st,String et,String designer) {
		Reservation reservation=new Reservation();
		String choiceHairList="";
		int itemNum=0;
		String dateTime=date+"/"+st+"~"+et;
		Map<String,Object> designerMap=designerDao.getDesignerByName(designer);
		
		reservation.setDesignerNum((int)designerMap.get("dnum"));
		reservation.setDate(dateTime);
		
		if(cut.equals("true")) {
<<<<<<< HEAD
			choiceHairList+="cut-";
		}
		if(dye.equals("true")) {
			choiceHairList+="dye-";
		}
		if(pum.equals("true")) {
			choiceHairList+="pum-";
		}
		
		reservation.setItem(choiceHairList);
//		reservationDao.insert_before_cusphone_reservation(reservation);
=======
			choice_hair_list+="커트-";
		}
		if(dye.equals("true")) {
			choice_hair_list+="염색-";
		}
		if(pum.equals("true")) {
			choice_hair_list+="펌-";
		}
		
		reservation.setRitem(choice_hair_list);
		reservationDao.insert_before_cusphone_reservation(reservation);
>>>>>>> parent of 1948bc4... 예약하기 버튼 클릭 시 모든 절차가 완성되 고객 예약 완료함, 동시에 해당 디자이너에게 예약 문자 전송
		
		reservation=reservationDao.getReservation_by_dnum_rdate(reservation);
		
<<<<<<< HEAD
		return reservation;
	}

	public void insertReservation(Reservation reservation) {
		reservationDao.insertReservation(reservation);
		
	}

	public Map<String, Object> getDesignerNum(int rdesignernum) {
		
		return designerDao.getNum(rdesignernum);
=======
		
		return reservation;
>>>>>>> parent of 1948bc4... 예약하기 버튼 클릭 시 모든 절차가 완성되 고객 예약 완료함, 동시에 해당 디자이너에게 예약 문자 전송
	}

}
