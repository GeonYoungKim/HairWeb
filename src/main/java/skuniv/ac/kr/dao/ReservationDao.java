package skuniv.ac.kr.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import model.Reservation;
import skuniv.ac.kr.connect.ConnectDB;

@SuppressWarnings("unchecked")
@Repository("ReservationDao")
public class ReservationDao extends ConnectDB{

	public List<Map<String, Object>> select_reservation_list(String select_date) {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("reservation.select_reservation_List",select_date);
	}

	public void insert_before_cusphone_reservation(Reservation reservation) {
		// TODO Auto-generated method stub
		insert("reservation.insert_before_cusphone_reservation", reservation);
	}

	public Reservation getReservation_by_dnum_rdate(Reservation reservation) {
		// TODO Auto-generated method stub
		return (Reservation)selectOne("reservation.getReservation_by_dnum_rdate", reservation);
	}

}
