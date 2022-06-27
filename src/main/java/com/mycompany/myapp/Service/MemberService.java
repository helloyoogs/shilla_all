package com.mycompany.myapp.Service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.mycompany.myapp.DTO.MemberDto;

import java.util.HashMap;

public interface MemberService {

	boolean join(Map<String, Object> map);

	MemberDto detail(Map<String, Object> map);

	boolean edit(Map<String, Object> map);

	boolean remove(Map<String, Object> map);

	List<Map<String, Object>> list(Map<String, Object> map);
	//희영 추가 //동준 수정
	boolean select_login(Map<String, Object> map);
	
	//findId
	List<Map<String, Object>> findId(Map<String, Object> map);
	
	//findPw
	List<Map<String, Object>> findPw(Map<String, Object> map);

	

}
