package model;

import java.sql.Date;

public class Reservation {
	private int rnum;
	private int rdesignernum;
	private Date rdate;
	private String rcustomerphone;
	private String ritem;
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
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public String getRcustomerphone() {
		return rcustomerphone;
	}
	public void setRcustomerphone(String rcustomerphone) {
		this.rcustomerphone = rcustomerphone;
	}
	public String getRitem() {
		return ritem;
	}
	public void setRitem(String ritem) {
		this.ritem = ritem;
	}
	
	

}
