package sunhye.choi.studypark.user.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import sunhye.choi.studypark.user.model.vo.User;

public interface UserService {

	/** 회원가입 성공*/
	int userJoinSuccess(HashMap<String, Object> map);

	/** 로그인 체크 */
	List<User> userLoginEmailChk(User user);
	List<User> userLoginPhoneChk(User user);
	
}
