package com.mycompany.myapp.Service;

import java.util.List;
import java.util.Map;

import com.mycompany.myapp.DTO.BeforeReviewDto;
import com.mycompany.myapp.DTO.ReviewDto;

public interface ReviewService {

	String create(Map<String, Object> map);

	ReviewDto detail(Map<String, Object> map);

	boolean edit(Map<String, Object> map);

	boolean remove(Map<String, Object> map);

	List<Map<String, Object>> list(Map<String, Object> map);

	BeforeReviewDto preInfo(Map<String, Object> map);

}
