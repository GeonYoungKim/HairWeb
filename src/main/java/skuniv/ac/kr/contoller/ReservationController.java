package skuniv.ac.kr.contoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Reservation;
import skuniv.ac.kr.service.QnAService;
import skuniv.ac.kr.service.ReservationService;

@Controller
public class ReservationController {
	
	
	@Resource(name = "ReservationService")
	private ReservationService reservationService;
	
	@RequestMapping(value = "/reservation")
	public String reservation(HttpServletRequest request) throws Exception {
		System.out.println("reservation");
		return "reservation/reservation";
	}
	@RequestMapping(value = "/reservation_select_day")
	public String reservation_select_day(HttpServletRequest request) throws Exception {
		System.out.println("reservation_select_day");
		String select_date=request.getParameter("date");
		
		Map<String,Map<String, String>> reservation_possible_map = reservationService.select_reservation_possible_map(select_date);
		
		request.setAttribute("reservation_possible_map", reservation_possible_map);
		request.setAttribute("select_date", select_date);
		return "reservation/reservation_select_day_show";
		
	}
	@RequestMapping(value = "/reservation_input_customer")
	public String test(HttpServletRequest request) throws Exception {
		System.out.println("reservation_input_customer");
		
		String cut=request.getParameter("cut");
		String dye=request.getParameter("dye");
		String pum=request.getParameter("pum");
		String date=request.getParameter("date");
		String st=request.getParameter("st");
		String et=request.getParameter("et");
		String designer=request.getParameter("designer");
		
		Reservation reservation=reservationService.set_before_input_customer(cut,dye,pum,date,st,et,designer);
		
		request.setAttribute("Reservation", reservation);
		return "reservation/reservation_input_customer";
	}
	@RequestMapping(value = "/reservation_complete")
	public String reservation_complete(HttpServletRequest request) throws Exception {
		
		
		
		return "reservation/reservation_complete";
	}
	
	
	
	
	

}
