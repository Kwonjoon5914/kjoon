package 프로그래밍과제;

import java.util.Scanner;

public class 프로그래밍1 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int x;
		int total;
		System.out.print("정수를 입력하세요 : ");
		x = in.nextInt();
		total = x * x;
		System.out.printf("%d의 제곱은 %d 입니다.", x, total);
		in.close();
	}
}