package com.mycompany.myapp.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.DAO.ReviewDao;
import com.mycompany.myapp.DTO.BeforeReviewDto;
import com.mycompany.myapp.DTO.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDao reviewDao;
	
	@Override
	public String create(Map<String, Object> map) {
		int affectRowCount = this.reviewDao.insert(map); //map객체 이용해서 insert 호출
		if(affectRowCount==1) { //생성 성공 
			System.out.println(map.toString());
			return map.get("review_no").toString();
		}
		return null;
	}
	
	@Override
	public BeforeReviewDto preInfo(Map<String, Object> map) {
		return this.reviewDao.select_preinfo(map);
	}
	
	@Override
	public ReviewDto detail(Map<String, Object> map) {
		return this.reviewDao.selectDetail(map);
	}
	
	@Override
	public boolean edit(Map<String, Object> map) {
		int affectRowCount = this.reviewDao.update(map);
		return affectRowCount==1; //update 성공시 true, 실패하면 false를 리턴하는 코드
	}
	
	@Override
	public boolean remove(Map<String, Object> map) {
		int affectRowCount = this.reviewDao.delete(map);
		return affectRowCount == 1; //delete 성공시 true, 실패하면 false를 리턴
		//return this.bookDao.delete(map)==1;
	}
	
	@Override
	public List<Map<String,Object>> list(Map<String, Object> map) {
		return this.reviewDao.selectList(map);
	}
	
}
