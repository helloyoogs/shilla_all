package com.mycompany.myapp.DTO;

import java.sql.Date;

public class BeforeReviewDto {

	private String id;
	private String type;
	private Date date_in;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getDate_in() {
		return date_in;
	}
	public void setDate_in(Date date_in) {
		this.date_in = date_in;
	}
	
	
}
