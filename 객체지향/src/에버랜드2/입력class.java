package 에버랜드2;

import java.util.Scanner;

public class 입력class {

	public Scanner in;// 위에서는 선언
	int inputType, inputID, inputCount, inputAdvantage; // 변수
	String inputID_str;
	boolean isDigit;

	public 입력class() {
		in = new Scanner(System.in);// 밑에서는 초기화 //이것이 합리적이다.
		inputType = 0;
		inputID = 0;
		inputCount = 0;
		inputAdvantage = 0;
		isDigit = true;
		inputID_str = "";
	}

	public int inputTypeCommand() {
		do {
			try {
				System.out.print("권종을 선택하세요\n1. 주간권\n2. 야간권\n99. 종료__");
				inputType = in.nextInt();
				if (inputType != 1 && inputType != 2 && inputType != 99) {
					System.out.println("잘못 입력하셨습니다.");
				}
			} catch (Exception e) {
				System.out.println("잘못 입력하셨습니다.");
			}
			in.nextLine(); // 줄 삽입
		} while (inputType != 1 && inputType != 2 && inputType != 99);
		return inputType;
	}

	// 주민번호 앞자리 입력
	public int inputIDCommand() {
		do {
			do {
				System.out.print("주민번호 앞자리를 입력하세요\n__");
				inputID_str = in.nextLine();
			} while (inputID_str.length() != 6);
			isDigit = true;
			try {
				inputID = Integer.parseInt(inputID_str); // 문자열 -> int로 변환
			} catch (Exception e) {
				isDigit = false;
			}
		} while (isDigit == false); // 다시 위로
		return inputID;
	}

	// 갯수 입력
	public int inputCountCommand() {
		do {
			try {
				System.out.print("몇 개를 주문하시겠습니까?__");
				inputCount = in.nextInt();
			} catch (Exception e) {
				in.nextLine();
			}
		} while (inputCount < 1 || inputCount > 9);
		return inputCount;
	}

	// 우대사항 입력
	public int inputAdvantageCommand() {
		do {
			try {
				System.out.print("우대사항을 입력하세요.\n1. 없음\n2. 장애인\n3. 국가유공자\n4. 다자녀\n5. 임산부\n__");
				inputAdvantage = in.nextInt();
			} catch (Exception e) {
				in.nextLine();
			}
		} while (inputAdvantage < 1 || inputAdvantage > 5);
		return inputAdvantage;
	}

	// 종료 -> 소멸자
	protected void finalize() throws Throwable {
		in.close();
	}
}
