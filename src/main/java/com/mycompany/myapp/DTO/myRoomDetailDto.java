package com.mycompany.myapp.DTO;

import java.sql.Date;

public class myRoomDetailDto {
	
	private int rsv_idx;
	private String id;
	private int room_no;
	private String type;
	private Date date_in;
	private Date date_out;
	private String payment;
	private int cash;
	
	
	public int getRsv_idx() {
		return rsv_idx;
	}
	public void setRsv_idx(int rsv_idx) {
		this.rsv_idx = rsv_idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRoom_no() {
		return room_no;
	}
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
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
	public Date getDate_out() {
		return date_out;
	}
	public void setDate_out(Date date_out) {
		this.date_out = date_out;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getCash() {
		return cash;
	}
	public void setCash(int cash) {
		this.cash = cash;
	}
	
	
	
	
	
	
}
