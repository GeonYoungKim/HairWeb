package model;

import java.sql.Date;

public class CustomerVO {
	private String phone;
	private String name;
	private Date membership;
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getMembership() {
		return membership;
	}
	public void setMembership(Date membership) {
		this.membership = membership;
	}
	
	
	
}
