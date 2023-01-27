package Chapter05;

class SuperClass {
	void superMethod() {
		System.out.println("조상 메서드");
	}
}

class SubClass extends SuperClass {
	@Override
	void superMethod() {
		System.out.println("자손 메서드");
	}
}

public class Example02 {
	//열거형
//	enum EXAMPLE_ENUM {
//		FIRST(1), SECOND(2), THIRD(3)
//		EXAMPLE_ENUM(int i) {
//			
//		}
//	};
	
	
	
	enum EXAMPLE_ENUM1 {FIRST, SECOND, THIRD}
	static final int FIRST =0;
	static final int SECOND =1;
	static final int THIRD =2;

	public static void main(String[] args) {
		System.out.println(EXAMPLE_ENUM1.SECOND);
	}

}
