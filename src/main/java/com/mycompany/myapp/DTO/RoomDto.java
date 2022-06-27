package com.mycompany.myapp.DTO;

public class RoomDto {

	private int room_no;
	private String type;
	private int base_price;
	private int add_price;
	private int base_person;
	private int max_person;
	private String imgLink;
	
	
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
	public int getBase_price() {
		return base_price;
	}
	public void setBase_price(int base_price) {
		this.base_price = base_price;
	}
	public int getAdd_price() {
		return add_price;
	}
	public void setAdd_price(int add_price) {
		this.add_price = add_price;
	}
	public int getBase_person() {
		return base_person;
	}
	public void setBase_person(int base_person) {
		this.base_person = base_person;
	}
	public int getMax_person() {
		return max_person;
	}
	public void setMax_person(int max_person) {
		this.max_person = max_person;
	}
	public String getImgLink() {
		return imgLink;
	}
	public void setImgLink(String imgLink) {
		this.imgLink = imgLink;
	}
	
}
