package chapter01;

import java.util.Scanner;

public class Example05 {

	public static void main(String[] args) {
		//제어문 (조건) switch 문
		Scanner sc = new Scanner(System.in);
		int number = sc.nextInt();
		
		switch(number) {
		case 1:
			System.out.println("1을 더합니다.");
			System.out.println(number += 1);
		case 2:
			System.out.println("2를 곱합니다.");
			System.out.println(number *= 1);
		case 3:
			System.out.println("3를 나눕니다.");
			System.out.println(number /= 1);
		default:
			System.out.println("1증갑 시킵니다.");
			System.out.println(++number);
		}
	}

}
