package 프로그래밍과제;

import java.util.Scanner;

public class 과제1 {
	//입력한 값이 홀수인지 짝수인지를 판별하는 프로그램을 작성하시오.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int number;
		System.out.print("숫자 입력 : ");
		number = in.nextInt();
		if(number%2 == 0 ) {
			System.out.print("짝수 입니다.");
		} else {
			System.out.print("홀수 입니다.");
			in.close();
		}
	}
}