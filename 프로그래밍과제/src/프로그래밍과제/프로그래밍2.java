package 프로그래밍과제;

import java.util.Scanner;

public class 프로그래밍2 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int r, h = 0;
		double total;
		System.out.print("원기둥의 밑면의 반지름은? ");
		r = in.nextInt();
		System.out.print("원기둥의 높이는? ");
		h = in.nextInt();
		total = (double)3.14 * (double)r * (double)r * (double)h;
		System.out.printf("원기둥의 부피는 %.1f", total);
		in.close();
	}
}
