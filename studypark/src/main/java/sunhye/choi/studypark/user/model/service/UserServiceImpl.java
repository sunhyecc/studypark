package sunhye.choi.studypark.user.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sunhye.choi.studypark.user.model.dao.UserDao;
import sunhye.choi.studypark.user.model.vo.User;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public int userJoinSuccess(HashMap<String, Object> map) {
		
		return userDao.userJoinSuccess(map);
	}
	
	@Override
	public List<User> userLoginEmailChk(User user) {
		
		return userDao.userLoginEmailChk(user);
	}
	
	@Override
	public List<User> userLoginPhoneChk(User user) {
		
		return userDao.userLoginPhoneChk(user);
	}
}
