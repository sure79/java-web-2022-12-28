package chapter01;

public class Example06 {

	public static void main(String[] args) {
		//제어문 (반복문) for
		
		for (int i = 0 ;  i < 10; i++) {
			System.out.println(i);
		}
		
		int [] numbers = new int[5];
		for (int i = 0; i < numbers.length; i++) {
			numbers[i] = i + 1;
			
		}
		
		
		
		System.out.println("+++++++++++++++++++++++++");
		for (int x = 0; x <= 4; x++) {
			System.out.println(numbers[x]);
			
		}
		
		System.out.println("+++++++++++++++++++++++++");
		
		for (int number : numbers) {
			System.out.println(number);
		}
	
//		
		
		
		
	}

}
