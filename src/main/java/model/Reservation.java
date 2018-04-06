package model;

import java.sql.Date;
import java.util.ArrayList;

public class Reservation {
<<<<<<< HEAD
	private int num;
	private int designerNum;
	private String date;
	private String customerPhone;
	private String item;
	private String customerName;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getDesignerNum() {
		return designerNum;
=======
	private int rnum;
	private int rdesignernum;
	private String rdate;
	private String rcustomerphone;
	private String ritem;
	public int getRnum() {
		return rnum;
>>>>>>> parent of 1948bc4... 예약하기 버튼 클릭 시 모든 절차가 완성되 고객 예약 완료함, 동시에 해당 디자이너에게 예약 문자 전송
	}
	public void setDesignerNum(int designerNum) {
		this.designerNum = designerNum;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	
}
