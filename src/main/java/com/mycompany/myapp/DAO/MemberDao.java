package com.mycompany.myapp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.myapp.DTO.MemberDto;

import org.springframework.jdbc.core.RowMapper;

//BookDao를 Bean객체로 등록.
//즉 스프링 컨테이너가 관리
//DB연결 관련된 Bean객체라는 의미에서 
//Repository라고 이름 붙임
@Repository
public class MemberDao {

	// root-context의 bean객체를 통해서 객체를 생성시킴.
	// new... 등등 선언 필요없음.
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int insert(Map<String, Object> map) {
		return this.sqlSessionTemplate.insert("member.insert", map);
	}

	public MemberDto selectDetail(Map<String, Object> map) {
		// map값 이용해서 select_detail 호출.(select 태그, id=select_detail)
		return this.sqlSessionTemplate.selectOne("member.select_detail", map);
	}

	public int update(Map<String, Object> map) {
		return this.sqlSessionTemplate.update("member.update", map);
	}

	public int delete(Map<String, Object> map) {
		return this.sqlSessionTemplate.delete("member.delete", map);
	}

	//java.awt 말고 java.util을 import할 것
	public List<Map<String, Object>> selectList(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("member.select_list", map);
	}
	
	//희영 추가
	// 동준 수정
	public int select_login(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectOne("member.select_login", map);
	}
	

	//findId
	public List<Map<String, Object>> findId(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("member.findId", map);
	}
	
	//findPw
	public List<Map<String, Object>> findPw(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("member.findPw", map);
	}

	

}