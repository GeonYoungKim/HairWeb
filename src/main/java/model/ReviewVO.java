package model;

import java.sql.Date;

public class ReviewVO {
	private String subject;
	private String writer;
	private String content;
	private String length;
	private String farmar;
	private String magic;
	private String colorchange;
	private String care;
	private String etc;
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLength() {
		return length;
	}
	public void setLength(String length) {
		this.length = length;
	}
	public String getFarmar() {
		return farmar;
	}
	public void setFarmar(String farmar) {
		this.farmar = farmar;
	}
	
}
