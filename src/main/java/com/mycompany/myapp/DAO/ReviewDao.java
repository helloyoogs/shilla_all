package com.mycompany.myapp.DAO;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.myapp.DTO.BeforeReviewDto;
import com.mycompany.myapp.DTO.ReviewDto;

@Repository
public class ReviewDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int insert(Map<String, Object> map) {
		return this.sqlSessionTemplate.insert("review.insert", map);
	}
	
	public BeforeReviewDto select_preinfo(Map<String, Object> map){
		return this.sqlSessionTemplate.selectOne("review.before_review", map);
	}
	
	public ReviewDto selectDetail(Map<String, Object> map) {
		//map값 이용해서 select_detail 호출.(select 태그, id=select_detail)
		return this.sqlSessionTemplate.selectOne("review.select_detail", map);
	}

	public int update(Map<String, Object> map) {
		return this.sqlSessionTemplate.update("review.update", map);
	}
	
	public int delete(Map<String, Object> map) {
		return this.sqlSessionTemplate.delete("review.delete", map);
	}
	
	//java.awt 말고 java.util을 import할 것
	public List<Map<String, Object>> selectList(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("review.select_list", map);
	}
}
