package sunhye.choi.studypark.user.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sunhye.choi.studypark.user.model.vo.User;



@Repository("userDao")
public class UserDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 회원가입
	public int userJoinSuccess(HashMap<String, Object> map) {
		return sqlSession.insert("userJoinSuccess", map);
	}

	/**로그인 체크*/
	public List<User> userLoginEmailChk(User user) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("userLoginEmailChk",user);
	}

	public List<User> userLoginPhoneChk(User user) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("userLoginPhoneChk", user);
	}
	
	
	
}
