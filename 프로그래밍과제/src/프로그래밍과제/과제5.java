package 프로그래밍과제;

import java.util.Scanner;

public class 과제5 {
//윤년인지 아닌지를 판단하는 프로그램 작성
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		
		int year;
		System.out.println("원하는 연도를 입력하세요 : ");
		year = in.nextInt();
		if ((year%4 == 0 && year%100 != 0) || year%400 == 0) {
			System.out.println("윤년 입니다.");
		} else {
			System.out.println("윤년이 아닙니다.");
		}
		in.close();
	}
}
