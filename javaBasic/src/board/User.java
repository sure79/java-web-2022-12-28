package board;


//아래코드를 자바빈이라고 한다.
public class User {
	// 아이디
	private int id;
	// 비밀번호
	private String password;
	// 이름
	private String name;
	// 전화번호
	private String telNumber;
	
	// 생성자 맴버변수 초기화
	public User(int id, String password, String name, String temNumber) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.telNumber = telNumber;
	}
	
	//getter, setter 메서드
	public int getId() {
		return this.id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelNumber() {
		return telNumber;
	}

	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", name=" + name + ", telNumber=" + telNumber + "]";
	}
	
	
	
	
}
