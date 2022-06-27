package com.mycompany.myapp.DTO;

import java.sql.Date;
import java.sql.Timestamp;

public class ReviewDto {

	private int reivew_no;
	private String review_title;
	private String review_content;
	
	private String type;
	private String room_rating;
	private String id;
	private Date date_in;
	private Timestamp review_date;
	public int getReivew_no() {
		return reivew_no;
	}
	public void setReivew_no(int reivew_no) {
		this.reivew_no = reivew_no;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRoom_rating() {
		return room_rating;
	}
	public void setRoom_rating(String room_rating) {
		this.room_rating = room_rating;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getDate_in() {
		return date_in;
	}
	public void setDate_in(Date date_in) {
		this.date_in = date_in;
	}
	public Timestamp getReview_date() {
		return review_date;
	}
	public void setReview_date(Timestamp review_date) {
		this.review_date = review_date;
	}
	
	
	
	
}
