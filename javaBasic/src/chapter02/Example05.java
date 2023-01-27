package chapter02;

//생성자 & 오버로딩
//오버로딩 :  같은 이름의 메서드를 매개변수의 상태를 다르게 하여 여러개를 생성 할 수 있도록 함.

class Juice {
	String name;
	String company;
	int kcal;
	int volume;
	//생성자
	Juice (){
		name = "coke";
		company = "coca-cola";
		kcal = 200;
		volume = 500;
	}
	
	Juice(String name, String comapany, int kcal, int volume){
		this();
		this.name = name;
		this.company = company;
		this.kcal =kcal;
		this.volume = volume;
	}
	
	void drink(int ml) {
		System.out.println("int drink!");
		volume -= ml;
	}
	
	void drink(float ml) {
		System.out.println("float drink!");
		volume -= ml;
	}
	
	void drink (int ml1, int ml2) {
		System.out.println("int int drink!");
		
	}
	
}
	

public class Example05 {

	public static void main(String[] args) {
		Juice juice = new Juice();
		juice.name = "보성홍차";
		juice.company = "동원";
		juice.kcal = 0;
		juice.volume = 500;
		
		Juice cola = new Juice("coke", "coca-cola", 200,1000);
		System.out.println(cola.volume);
		cola.name = "coke";
		cola.company = "coca-cola";
		cola.volume = 500;
		
		
		juice.drink(100);
		juice.drink(50.5F);
		juice.drink(10,20);


	}

}
