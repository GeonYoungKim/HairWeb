package model;

import java.sql.Date;
import java.util.ArrayList;

public class Reservation {

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
