package kr.ac.kopo.ctc.kopo01.printtest;

import java.util.Scanner;

import kr.ac.kopo.ctc.kopo01.domain.Account;
import kr.ac.kopo.ctc.kopo01.domain.Accountitem;

public class PrintTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in;
		int inputType, inputType1,inputType2, inputID, inputCount, inputIncome, inputOutcome;
		boolean isDigit;

		in = new Scanner(System.in);
		inputType = 0;
		inputType1 = 0;
		inputType2 = 0;
		inputID = 0;
		inputCount = 0;
		inputIncome = 0;
		inputOutcome = 0;
		do {
			try {
				System.out.print("시작화면\n1. 가계부 작성\n2. 가계부 조회\n3. 가계부 수정\n4. 통계 자료");
				inputType = in.nextInt();
				if (inputType != 1 && inputType != 2 && inputType != 3 && inputType != 4) {
					System.out.println("잘못 입력하셨습니다.");
				}

				if (inputType == 1) {
					System.out.println("가계부 작성\n1. 수입\n2. 지출");
					inputType1 = in.nextInt();

					if (inputType1 == 1) {
						System.out.println("수 입\n날짜 입력\t수입 내용\t총 금액");
					}

					if (inputType1 == 2) {
						System.out.println("지 출\n날짜 입력\t지출 내용\t현 금\t카 드\t총 금액");
					}
				}
				if (inputType == 2) {
					System.out.println("가계부 조회\n1. 수입조회\n2. 지출조회");
					inputType1 = in.nextInt();
					if (inputType1 == 1) {
						System.out.println("수입 조회\n1. 일별\n2. 월별\n3. 연별");
						inputType2 = in.nextInt();
						if (inputType2 == 1) {
							
						}
					}
					if (inputType1 == 2) {
						System.out.println("지출 조회\n1. 일별\n2. 월별\n3. 연별");
					}
				}

				if (inputType == 3) {
					System.out.println("가계부 수정\n1. 수입\n2. 지출");
					inputType1 = in.nextInt();
					if (inputType1 == 1) {
						System.out.println("수입 수정");
					}
				}
				if (inputType == 4) {
					System.out.println("통계 자료\n1. 월별 수입 및 지출 통계\n2. 월별 수입-지출 비율");
				}
			} catch (Exception e) {
				System.out.println("잘못 입력하셨습니다.");
			}
			in.nextLine();
		} while (inputType != 1 && inputType != 2 && inputType != 3 && inputType != 4);

		return;
	}
}