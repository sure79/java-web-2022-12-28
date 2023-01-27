package chapter02;

class Triangle {
	//밑변
		double base;
		//높이 
		double height;
		//대각선
		double diagonal;
		
		
		void createAndPrint() {
			base = 3;
			height = 4;
			diagonal = 5;
			
			System.out.println("base : " + base);
			System.out.println("height : " + height);
			System.out.println("diagonal : " + diagonal);
			
		}
	
}

class Pythagoras{
	// 만든자
	static String creater = "Pythagoras";
	
	
	//대각선 길이
	double getDiagonal(double base, double height) {
//		System.out.println(creator);
		return Math.sqrt(Math.pow(base,2) + Math.pow(height, 2)); 
	}
	//밑변의 길이
	double getBase(double diagonal, double height) {
		return Math.sqrt(Math.pow(diagonal,2) - Math.pow(height, 2)); 
	}
	//높이의 길이
	double getHeight(double diagonal, double base) {
		return Math.sqrt(Math.pow(diagonal,2) + Math.pow(base, 2)); 
	}
}

public class Example02 {

	public static void main(String[] args) {
		// 개체 배열
		SmartPhone[] phones = new SmartPhone[3];
		for (int i = 0; i < phones.length; i++) {
			//초기화 작업
			System.out.println(phones[i]);
			phones[i] = new SmartPhone();
		}
		System.out.println("=================");
		System.out.println(phones);
		System.out.println("=================");
		for (SmartPhone phone : phones) {
			System.out.println(phone);
			phone.nation = "United State";
			phone.os = "iOS";
			phone.owner ="John";
			phone.telNumber = "010-1111-1111";
					
		}
		System.out.println("=================");
		
		for ( SmartPhone phone : phones) {
			System.out.println(phone.nation);
			System.out.println(phone.os);
			System.out.println(phone.owner);
			System.out.println(phone.telNumber);
				}
		System.out.println("=================");
		
		// 피타고라스 정의
		//밑변
		int a = 10;
		//높이
		int b = 20;
		//대각선
		int c = 30;
		
		// 대각선의 길이
		//Math.pow() : 거듭제곱
		//Math.sqrt() : 제곱근
		//대각선의 길이
		double r1 = Math.sqrt(Math.pow(a,2) + Math.pow(b, 2)); 
		//밑변의 길이
		double r2 = Math.sqrt(Math.pow(c,2) - Math.pow(b, 2)); 
		//높이의 길이
		double r3 = Math.sqrt(Math.pow(c,2) - Math.pow(a, 2));
		
		Pythagoras p = new Pythagoras();
//		p.base = 10;
//		p.height = 20;
//		p.diagonal = 30;
	
//		double diagonal = p.getDiagonal();
		
		System.out.println(p.creater);
		p.creater = "Newton";
		System.out.println(p.creater);
		
		
		Pythagoras p2 = new Pythagoras();
		System.out.println(p2.creater);
		
		System.out.println(Pythagoras.creater);
		
		//삼각형 인스턴스
		Triangle triangle1 = new Triangle();
		
		triangle1.base= 3;
		triangle1.height = 4;
		triangle1.diagonal = 5;
		
		Triangle triangle6 = new Triangle();
		Triangle triangle7 = new Triangle();
		Triangle triangle8 = new Triangle();
		Triangle triangle9 = new Triangle();
		Triangle triangle10 = new Triangle();
		
		
		triangle6.createAndPrint();;
		triangle7.createAndPrint();;
		triangle8.createAndPrint();
		triangle9.createAndPrint();
		triangle10.createAndPrint(); 

	}          
	

}
