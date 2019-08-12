package 프로그래밍과제;

import java.util.Scanner;

public class 주민등록번호앞자리 {
//00~19 는 2000~2019년 생으로, 20~99 는 1920 ~ 1999년 생으로 판단
	//나이를 만 나이로 계산, 3월 7일이 지났으면 2019 - 생년
	//3월 7일이 지나지 않았으면 2019 - 생년 - 1
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int inputData, age, month, day;
		System.out.println("주민등록번호 앞자리를 입력하세요 :");
		inputData = in.nextInt();
		inputData = inputData / 10000;
		age = 2019 - (inputData + 1900) + 1;
		day = inputData%100;
		month = (inputData % 10000 - day) / 100;
		if(inputData <= 19) {
			age = 2019 - (inputData + 2000) + 1; //2000 년대
		} else {
			age = 2019 - (inputData + 1900) + 1; //1900 년대
		}
		if( month > 3 || (month == 3 && day >= 7 )) {
			age--;
		}
		System.out.println(age);
		if(inputData >= 19) {
			System.out.println("성년");
		} else {
			System.out.println("미성년");
		}
		if(inputData >= age) {
			System.out.println("성년");
		} else {
			System.out.println("미성년");
		in.close();
		}
	}
}