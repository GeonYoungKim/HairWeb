package skuniv.ac.kr.contoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping(value = "/test")
	public void test(HttpServletRequest request) throws Exception {
		System.out.println("test");
		
		
	}
	
	

}
