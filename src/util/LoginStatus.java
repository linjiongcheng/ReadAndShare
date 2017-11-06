package util;

/* 记录登录状态 */
public class LoginStatus {

	private static LoginStatus instance = new LoginStatus();
	
	private LoginStatus() {}
	
	public static LoginStatus getInstance() {
		return instance;
	}
	
	private String userPhoneNumber;

	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}

	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}
	
	public boolean isLogin() {
		return (userPhoneNumber != null);
	}
	
}
