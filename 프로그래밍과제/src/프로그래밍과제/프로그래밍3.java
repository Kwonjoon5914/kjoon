package 프로그래밍과제;

import java.util.Scanner;

public class 프로그래밍3 {
	/*4번문제 */
	public static void main(String[] args) {
		
	Scanner in = new Scanner(System.in);
	int sec, min, hor;
	int inputTime;
	System.out.print("초 단위 정수를 입력하세요 : ");
	inputTime = in.nextInt();
	// 시간
	hor = inputTime / 3600;
	inputTime = inputTime - (3600 * hor);
	// 분
	min = inputTime / 60;
	// 초
	sec = inputTime - (60 * min);
	System.out.printf("%d시간", hor);
	System.out.printf("%d분", min);
	System.out.printf("%d초", sec);
	in.close();
	}
}