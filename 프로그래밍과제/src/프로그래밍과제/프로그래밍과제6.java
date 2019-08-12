package 프로그래밍과제;

import java.util.Scanner;

public class 프로그래밍과제6 {
	//키보드로 화씨온도를 입력받아 섭씨온도로 환산해 출력하는 프로그램을 작성하시오.
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int f;
		float c;
		System.out.print("화씨온도 입력하세요.");
		f = in.nextInt();
		c = 5*(f-32)/9;
		System.out.printf("%f도 입니다.", c);
		in.close();
	}
}
