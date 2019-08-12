package 프로그래밍과제;

import java.util.Scanner;

public class ifelse과제 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		System.out.println("나이를 입력하세요 : ");
		int inputData;
		inputData = in.nextInt();
		if(inputData >= 19) {
			System.out.println("성년");
		} else {
			System.out.println("미성년");
		in.close();
		}
	}
}