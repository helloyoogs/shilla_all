package com.mycompany.myapp.Service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.DAO.MemberDao;
import com.mycompany.myapp.DTO.MemberDto;

//Controller와 DAO부분을 이어주는 부분
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao memberDao; //별도의 new 키워드가 없어도 자동으로 객체를 만들어서 BeanFactory에서 자동관리하고 있음
	
	@Override
	public boolean join(Map<String, Object> map) {
		int affectRowCount = this.memberDao.insert(map); //map객체 이용해서 insert 호출
		if(affectRowCount==1) { //생성 성공 
			System.out.println(map.toString());
		}
		return true;

	}
	
	@Override
	public MemberDto detail(Map<String, Object> map) {
		return this.memberDao.selectDetail(map);
	}
	
	@Override
	public boolean edit(Map<String, Object> map) {
		int affectRowCount = this.memberDao.update(map);
		return affectRowCount==1; //update 성공시 true, 실패하면 false를 리턴하는 코드
	}
	
	@Override
	public boolean remove(Map<String, Object> map) {
		int affectRowCount = this.memberDao.delete(map);
		return affectRowCount == 1; 
	}
	@Override
	public List<Map<String,Object>> list(Map<String, Object> map) {
		return this.memberDao.selectList(map);
	}
	//희영추가
	
	//동준 수정
	@Override
	public boolean select_login(Map<String, Object> map) {
		//int affectRowCount = this.memberDao.select_login(map);
		//return affectRowCount == 1;
		return this.memberDao.select_login(map)==1;
	}

	/*@Override
	public boolean login(Map<String, Object> map) {
		int affectRowCount = this.memberDao.select(map);
		return affectRowCount==1; //update 성공시 true, 실패하면 false를 리턴하는 코드
	} */
	
	//findId
	@Override
	public List<Map<String,Object>> findId(Map<String, Object> map) {
		return this.memberDao.findId(map);
	}
	
	//findPw
	@Override
	public List<Map<String,Object>> findPw(Map<String, Object> map) {
		return this.memberDao.findPw(map);
	}


	
	


}
