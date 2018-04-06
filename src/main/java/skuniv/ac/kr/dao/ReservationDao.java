package skuniv.ac.kr.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import model.Reservation;
import skuniv.ac.kr.connect.ConnectDB;

@SuppressWarnings("unchecked")
@Repository("ReservationDao")
public class ReservationDao extends ConnectDB{

	public List<Map<String, Object>> selectReservationList(String select_date) {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("reservation.select_reservation_List",select_date);
	}

<<<<<<< HEAD
	public void insertReservation(Reservation reservation) {
=======
	public void insert_before_cusphone_reservation(Reservation reservation) {
>>>>>>> parent of 1948bc4... 예약하기 버튼 클릭 시 모든 절차가 완성되 고객 예약 완료함, 동시에 해당 디자이너에게 예약 문자 전송
		// TODO Auto-generated method stub
		insert("reservation.insert_before_cusphone_reservation", reservation);
	}

	public Reservation getReservationByNumAndDate(Reservation reservation) {
		// TODO Auto-generated method stub
		return (Reservation)selectOne("reservation.getReservation_by_dnum_rdate", reservation);
	}

}
