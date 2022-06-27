package com.mycompany.myapp.Service;

import java.util.List;
import java.util.Map;

import com.mycompany.myapp.DTO.RsvDetailDto;

public interface Reservation {

	String createReservation(Map<String, Object> map);

	List<Map<String, Object>> list(Map<String, Object> map);

	List<Map<String, Object>> dateCheck(Map<String, Object> map);

	RsvDetailDto detail(Map<String, Object> map);

	boolean remove(Map<String, Object> map);

	boolean pay_update(Map<String, Object> map);

	List<Map<String, Object>> mylist(Map<String, Object> map);

}
