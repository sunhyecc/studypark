package sunhye.choi.studypark.user.model.vo;

import java.io.Serializable;

public class User implements Serializable{
	/*직렬화(Serialize)
	 * @ 자바 시스템 내부에서 사용되는 Object 또는 Data를 외부의 자바시스템에서도 사용할 수 있도록
	 * 	 byte형태로 데이터를 변환하는 기술이다. 
	 * @ JVM(Java Virtual Machine 이하 JVM)의 메모리에 상주 (힙 또는 스택)되어 있는 객체 데이터를 
	 * 	 byte 형태로 변환하는 기술이다.
	 * @ 데이터타입이 자동으로 맞춰지기 때문에 사용을 한다.*/
	
	private static final long serialVersionUID = 1000L;
	/* serialVersionUID 
	 * @ 직렬화에 사용되는 고유아이디이며 설정하지 않으면 JVM에서 디폴트로 자동 생성된다. 
	 *   하지만 불안하기 때문에 java에서 명시적으로 선언할 것을 권장한다.*/
	
	//필드
	private int userSeq; 		//USER_SEQ
	private String name;  		//NAME
	private String nickName;	//NICKNAME
	private String eMail;		//EMAIL
	private String phoneNumber; //PHONEN_UMBER
	private String password;	//PASSWORD
	private String address1;	//ADDRESS1
	private String address2;	//ADDRESS2
	//기본 생성자
	public User() {}
	public User(int userSeq, String name, String nickName, String eMail, String phoneNumber, String password,
			String address1, String address2) {
		super();
		this.userSeq = userSeq;
		this.name = name;
		this.nickName = nickName;
		this.eMail = eMail;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.address1 = address1;
		this.address2 = address2;
	}
	public int getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(int userSeq) {
		this.userSeq = userSeq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	
	@Override
	public String toString() {
		return "User [userSeq=" + userSeq + ", name=" + name + ", nickName=" + nickName + ", eMail=" + eMail
				+ ", phoneNumber=" + phoneNumber + ", password=" + password + ", address1=" + address1 + ", address2="
				+ address2 + "]";
	}
	
	
}
