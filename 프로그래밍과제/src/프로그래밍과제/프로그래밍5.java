package 프로그래밍과제;

import java.util.Scanner;

public class 프로그래밍5 {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		char c;
		System.out.print("소문자 입력하세요");
		c = in.next().charAt(0); //대문자와 소문자의 정수 값 차이는 (int)'A' - (int)'a'를 이용
		System.out.println((char)(c-32));
		in.close();
	}
}
