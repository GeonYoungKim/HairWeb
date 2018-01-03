package model;

import java.sql.Date;
import java.util.ArrayList;

public class Reservation {
	private int rnum;
	private int rdesignernum;
	private String rdate;
	private String rcustomerphone;
	private ArrayList<String> ritem;
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public int getRdesignernum() {
		return rdesignernum;
	}
	public void setRdesignernum(int rdesignernum) {
		this.rdesignernum = rdesignernum;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRcustomerphone() {
		return rcustomerphone;
	}
	public void setRcustomerphone(String rcustomerphone) {
		this.rcustomerphone = rcustomerphone;
	}
	public ArrayList<String> getRitem() {
		return ritem;
	}
	public void setRitem(ArrayList<String> ritem) {
		this.ritem = ritem;
	}
	
	

}
