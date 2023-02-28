package entity;

// Board 데이터베이스 User 테이블
// 사용자 정보 
public class UserEntity {
	
	//사용자 이메일
	private String email;
	//사용자 비밀번호
	private String password;
	//사용자 닉네임
	private String nickname;
	//사용자 핸드폰번호
	private String telNumber;
	//사용자 주소
	private String address;
	//사용자 프로필사진 URL
	private String profile;
	
	public UserEntity(String email, String password, String nickname, String telNumber, String address,
			String profile) {
		
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.telNumber = telNumber;
		this.address = address;
		this.profile = profile;
	}
	
	public UserEntity( ) {}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getTelNumber() {
		return telNumber;
	}

	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	@Override
	public String toString() {
		return "UserEntity [email=" + email + ", password=" + password + ", nickname=" + nickname + ", telNumber="
				+ telNumber + ", address=" + address + ", profile=" + profile + "]";
	}
	
	
	
	
	

}
