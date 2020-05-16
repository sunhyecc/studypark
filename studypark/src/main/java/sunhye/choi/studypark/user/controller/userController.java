package sunhye.choi.studypark.user.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class userController {

private static final Logger logger = LoggerFactory.getLogger(userController.class);

/** 로그인 페이지 이동 */
@RequestMapping(value="login.do", method=RequestMethod.GET )
public String login() {

	
	return "user/login";
}

/** 로그인 페이지 이동 */
@RequestMapping(value="userJoin.do", method=RequestMethod.GET )
public String userJoin() {

	
	return "user/userJoin";
}


}//class