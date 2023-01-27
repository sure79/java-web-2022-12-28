package chapter02;

import chapter02.entity.Developer;
import chapter02.entity.Police;


import chapter02.entity.*;	







public class Example06 {
	



	public static void main(String[] args) {	
		Developer developer = new Developer("Johedoe", "man", "Goole");
		Police police = new Police();
		BusDriver busDriver = new BusDriver();
		
		// 참조형 변수에서 테이터가 미정인 상태일때 null
		developer.languageSkill ="";
		System.out.println(developer.name);
		
		developer.eatBreakfast();
		busDriver.eatBreakfast();
		
				
	}

}
