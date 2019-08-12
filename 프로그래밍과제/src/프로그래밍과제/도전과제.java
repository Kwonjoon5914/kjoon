package 프로그래밍과제;

import java.util.Scanner;

public class 도전과제 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int x;
		int y;
		int total;
		System.out.print("가로를 입력하세요 : ");
		x = in.nextInt();
		System.out.print("세로를 입력하세요 : ");
		y = in.nextInt();
		total = x * y;
		System.out.printf("넓이는 %d 입니다. \n", total);
		int inputData;
		System.out.print("정수를 입력하세요. : ");
		inputData = in.nextInt();
		System.out.printf("입력하시는 수는 %s 입니다.\n",
					(inputData % 2) ==0 ? "짝수" : "홀수");
	in.close();
	}

}
