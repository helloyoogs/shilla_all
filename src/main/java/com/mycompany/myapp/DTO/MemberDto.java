package com.mycompany.myapp.DTO;

public class MemberDto {
private String id;
private String pw;
private String name;
private String age;
private String email;
private String phone;
private String address;

public MemberDto(String id, String pw, String name, String age, String email, String phone, String address) {
	super();
	this.id = id;
	this.pw = pw;
	this.name = name;
	this.age = age;
	this.email = email;
	this.phone = phone;
	this.address = address;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getPw() {
	return pw;
}

public void setPw(String pw) {
	this.pw = pw;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getAge() {
	return age;
}

public void setAge(String age) {
	this.age = age;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}



}
