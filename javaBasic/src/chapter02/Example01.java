package chapter02;

//class : 객체를 생성하는 설계도 / 기준
class SmartPhone {
	
	// 맴버변수  / 속성
	String nation;
	String os;
	String owner;
	String telNumber;
	String hisPhone;
	
	
	// 메서드 / 행위
	void tel (String toTelNumber) {
		// 전화번호가 빈값이면 ' 전화번호를 입력하세요.'
		if (toTelNumber.isEmpty()) {
			System.out.println("전화번호를 입력하세요.");
			return;
		}
		//빈값이 아니면 'toTelNumber 에 전화중입니다. '
		System.out.println(toTelNumber + "에 전화중입니다.");
		
	}
	
	void sendMessage(String toTelNumber, String message) {
		System.out.println(toTelNumber + "에" + message + " 를 보냅니다.");
		
	}
}


public class Example01 {

	public static void main(String[] args) {
		//인스턴스 선언 및 생성
		
		SmartPhone myPhone;
		myPhone = new SmartPhone();
		SmartPhone yourPhone = new SmartPhone();
		
		System.out.println(myPhone);
		System.out.println(yourPhone);
		
		//  인스턴스의 속성(맴버변수)에 접근
		myPhone.nation = "korea";
		myPhone.os = "android";
		myPhone.owner = "서지훈";
		myPhone.telNumber = "010-1111-1111";
		
		System.out.println(myPhone.nation);
		System.out.println(myPhone.os);
		System.out.println(myPhone.owner);
		System.out.println(myPhone.telNumber);
		
		//인스턴스의 기능을 사용 (메서드를 호출)
		myPhone.tel("010-2222-2222");
		
		SmartPhone hisPhone = new SmartPhone();
		yourPhone.nation = "United State";
		
		
		
		hisPhone = yourPhone;
		
		System.out.println(hisPhone.nation);
		
		yourPhone.nation = "United Kingdom";
		System.out.println(yourPhone.nation);
	}

}
