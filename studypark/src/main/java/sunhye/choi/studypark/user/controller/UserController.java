package sunhye.choi.studypark.user.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sunhye.choi.studypark.user.model.service.UserService;
import sunhye.choi.studypark.user.model.vo.User;

@Controller
public class UserController {

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private UserService userService;
	
	//스캐너, 로그찍기
	Scanner sc = new Scanner(System.in);
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

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

/**암호화 생성자*/
@Bean
public BCryptPasswordEncoder getPasswordEncoder(){
  return new BCryptPasswordEncoder();
}

/** 회원가입성공 */
@RequestMapping(value="userJoinSuccess.do", method=RequestMethod.POST )
public ModelAndView userJoinSuccess(ModelAndView mv,
									@RequestParam(name = "mailId", required=false) String mail1, 
								    @RequestParam(name = "mail",   required=false) String mail2, 
								    @RequestParam(name = "phone1", required=false) String phone1, 
								    @RequestParam(name = "phone2", required=false) String phone2, 
								    @RequestParam(name = "phone3", required=false) String phone3, 
								    @RequestParam(name = "zipcode", required=false) String zipcode, 
								    @RequestParam(name = "branchAddress", required=false) String branchAddress,
								    @RequestParam(name = "plusAddressInfo", required=false) String plusAddressInfo,
								    User user){
	

	String pwd = getPasswordEncoder().encode(user.getPassword());
	user.seteMail(mail1+"@"+mail2);
	user.setPassword(pwd);
	user.setPhoneNumber(phone1+phone2+phone3);
	HashMap<String, Object> map = new HashMap<String, Object>();
	map.put("name",         user.getName());
	map.put("nickName",     user.getNickName());
	map.put("password",     user.getPassword());
	map.put("phoneNumber",  user.getPhoneNumber());
	map.put("address1", 	user.getAddress1());
	map.put("address2", 	user.getAddress2());
	map.put("eMail", 		user.geteMail());
	map.put("zipcode", zipcode);
	map.put("branchAddress", branchAddress);
	map.put("plusAddressInfo", plusAddressInfo);

    int result = userService.userJoinSuccess(map);
	
	
	mv.setViewName("home");
	return mv;
}


/** 로그인 */
@RequestMapping(value="login.do", method=RequestMethod.POST/*, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE*/)
public ModelAndView login(ModelAndView mv, HttpSession session,
		@RequestParam(name = "studyParkId", required=false) String id, 
	    @RequestParam(name = "studyParkPwd",   required=false) String password, 
									User user
								  ){
	

	boolean emailChk = id.contains("@");
	
	user.seteMail(id);
	user.setPhoneNumber(id);
	user.setPassword(password);
	
	List<User> userChk = new ArrayList<User>();
	
	if(emailChk) {
		userChk  = userService.userLoginEmailChk(user);
		
	}else {
		userChk = userService.userLoginPhoneChk(user);
	}
	 
	boolean pwdChk = getPasswordEncoder().matches(password, userChk.get(0).getPassword());
	
	try {
		if(pwdChk) {
			System.out.println("pass성공");
			session.setAttribute("loginMember", userChk);	
			mv.setViewName("home");
		}else {
			
			mv.setViewName("user/login");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	

	return mv;
}

/** 로그아웃 */
@RequestMapping(value="logout.do")
public String logout(HttpSession session){
	
	session.invalidate();
	return "home";
}

/** myPage로 이동*/
/** 회원가입 페이지 이동 */
@RequestMapping(value="myPage.do", method=RequestMethod.GET )
public String myPage() {

	
	return "user/myPage";
}
}//class