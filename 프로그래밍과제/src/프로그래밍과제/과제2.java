package 프로그래밍과제;

import java.util.Scanner;

public class 과제2 {
//두 개의 숫자를 입력 받아 큰 수를 출력하는 프로그램 작성
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int a, b;
		System.out.printf("숫자 A 입력 : ");
		a = in.nextInt();
		System.out.printf("숫자 B 입력 : ");
		b = in.nextInt();
		if(a >= b) {
			System.out.printf("큰 숫자는 %d 입니다. ", a);
		} else {
			System.out.printf("큰 숫자는 %d 입니다. ", b);
		in.close();
		}
	}
}