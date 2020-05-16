package sunhye.choi.studypark.user.controller;

import java.util.Scanner;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class userController {
Scanner sc = new Scanner(System.in);
private static final Logger logger = LoggerFactory.getLogger(userController.class);

/** 로그인 페이지 이동 */
@RequestMapping(value="login.do", method=RequestMethod.GET )
public String login() {

	
	return "user/login";
}

/** 회원가입 페이지 이동 */
@RequestMapping(value="userJoin.do", method=RequestMethod.GET )
public String userJoin() {

	
	return "user/userJoin";
}

@RequestMapping(value="userJoinSuccess.do", method=RequestMethod.POST )
public ModelAndView userJoinSuccess(ModelAndView mv) {
	System.out.println("성공");
	mv.setViewName("home");
	return mv;
}



}//class