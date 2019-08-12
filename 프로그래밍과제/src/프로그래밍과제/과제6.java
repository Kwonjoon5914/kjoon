package 프로그래밍과제;

import java.util.Scanner;

public class 과제6 {
//입력한 년도의 각 월의 마지막 날을 출력하기
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		
		int year;
		System.out.println("원하는 연도를 입력하세요 : ");
		year = in.nextInt();
		System.out.println(year + "년은 다음과 같습니다.");
		System.out.println("1월 : 31일");
		if ((year%4 == 0 && year%100 != 0) || year%400 == 0) {
			System.out.println("2월 : 29일 * 윤년 29일, 평년 28일");
		} else {
			System.out.println("2월 : 28일 ");
		}
		System.out.println("3월 : 31일");
		System.out.println("4월 : 30일");
		System.out.println("5월 : 31일");
		System.out.println("6월 : 31일");
		System.out.println("7월 : 30일");
		System.out.println("8월 : 31일");
		System.out.println("9월 : 30일");
		System.out.println("10월 : 31일");
		System.out.println("11월 : 30일");
		System.out.println("12월 : 31일");
		
		in.close();
	}
}