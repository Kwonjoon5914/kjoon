package 반복문;

import java.util.Scanner;

public class 달력과제190311 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int year = 0, day = 0, dayOfWeek = 0, month = 0;
		int month2 = 0;
		System.out.print("원하는 연도를 입력하세요 : ");
		year = in.nextInt();
		System.out.print("원하는 달을 입력하세요 : ");
		month = in.nextInt();

		day = (year - 1900) * 365;
		for (int i = 1900; i < year; i++) {
			if ((i % 4 == 0 && i % 100 != 0) || i % 400 == 0) {
				// 윤년이 포함되는 경우는 그 해에 +1 해주기
				day++;
			}
		}
		if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
			if (month >= 3) { // 원하는 연도 당해가 윤년이면, 3월 이후 날짜는 +1 해줄것
				day++;
			}
		}
		switch (month) { //월 마다 일 수(윤년포함)
		case 1:
			month2 = 31;
			break;
		case 2:
			month2 = ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) ? 29 : 28;
			break;
		case 3:
			month2 = 31;
			break;
		case 4:
			month2 = 30;
			break;
		case 5:
			month2 = 31;
			break;
		case 6:
			month2 = 30;
			break;
		case 7:
			month2 = 31;
			break;
		case 8:
			month2 = 31;
			break;
		case 9:
			month2 = 30;
			break;
		case 10:
			month2 = 31;
			break;
		case 11:
			month2 = 30;
			break;
		case 12:
			month2 = 31;
			break;
		}
		dayOfWeek = day % 7;
		System.out.printf("%d년 %d월 달력\n", year, month);
		System.out.printf("%3c %3c %3c %3c %3c %3c %3c\n", '일', '월', '화', '수', '목', '금', '토');
		
		if (dayOfWeek > -1 && dayOfWeek < 6) { //월화수목금토 나열
			for (int i = 0; i < dayOfWeek + 1; i++) { //빈 칸 넣는 조건 
				System.out.print("   ");  //빈 칸 출력
			}
		}
		for (int i = 1; i <= month2; i++) { //일수
			System.out.printf("%3d", i); //일수 출력
			if ((dayOfWeek + 1 + i) % 7 == 0) { //줄바꾸기
				System.out.println();
			}
		}
		in.close();
	}
}
