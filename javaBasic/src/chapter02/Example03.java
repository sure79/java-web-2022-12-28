package chapter02;

class Mymath {
	static double getEquilateralTriangleArea (double side) {
		//매개변수검증
		if (side <= 0) {
			return 0;
		}
		double result = (Math.sqrt(3) / 4) * Math.pow(side,  2);
		return result;
	}
	//정삼각형의 높이를 구하는 메서드
	static double getEquilateralTriangleHeight ( double side) {
		//매개변수 검증
		if (side <=0) {
			return 0;
		}
		double getEquilateralTriangleHeight = (Math.sqrt(3) / 2) * side;
		return getEquilateralTriangleHeight;
	}
	
	//1증가
	static int increase(int number) {
		number++;
		System.out.println("In of methond");
		System.out.println(number);
		return number;
	}
	
	static void increaseTriangle(Triangle triangle) {
		triangle.base++;
		triangle.height++;
		triangle.diagonal++;
		
	}
	
}

public class Example03 {

	public static void main(String[] args) {
		double side = 10.0;
		double equilateralTritangleArea = Mymath.getEquilateralTriangleArea(side);
		System.out.println(equilateralTritangleArea);
		
		
		double equilateralTriangleHeight = Mymath.getEquilateralTriangleHeight(-10);
		System.out.println(equilateralTriangleHeight);
		
		
		int number = 10;
		int afternumber = Mymath.increase(number);
		System.out.println("Out of methond");
		System.out.println(number);
		number = Mymath.increase(number);
		
		Triangle triangle = new Triangle();
		triangle.createAndPrint();
		
		Mymath.increaseTriangle(triangle);
		System.out.println(triangle.base);
		

	}

}
 