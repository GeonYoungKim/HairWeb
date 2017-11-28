package model;

import java.sql.Date;

public class CustomerVO {
	private String customerphone;
	private String customername;
	private Date customermembership;
	public String getCustomerphone() {
		return customerphone;
	}
	public void setCustomerphone(String customerphone) {
		this.customerphone = customerphone;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public Date getCustomermembership() {
		return customermembership;
	}
	public void setCustomermembership(Date customermembership) {
		this.customermembership = customermembership;
	}

	
	
}
