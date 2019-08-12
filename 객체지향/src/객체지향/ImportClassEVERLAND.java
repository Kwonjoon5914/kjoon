package 객체지향;

import java.util.Scanner;

public class ImportClassEVERLAND {

	public Scanner in;
	int inputType, inputID, inputCount, inputAdvantage;
	String inputID_str;
	boolean isDigit;

	public ImportClassEVERLAND() {
		in = new Scanner(System.in);
		inputType = 0;
		inputID = 0;
		inputID_str = "";
		isDigit = true;
		inputCount = 0;
		inputAdvantage = 0;
	}
	/*
	public void inputAll() {
		inputTypeCommand();
		inputIDCommand();
		inputCountCommand();
		inputAdvantageCommand();
	}*/

	// 입력 메서드
	public int inputTypeCommand() {
		// 권종 입력
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
			in.nextLine();
		} while (inputType != 1 && inputType != 2 && inputType != 99);
		return inputType;
	}
	public int inputIDCommand() {
		// 주민번호 입력
		do {
			do {
				System.out.print("주민번호 앞자리를 입력하세요\n__");
				inputID_str = in.nextLine();
			} while (inputID_str.length() != 6);
			isDigit = true;
			try {
				inputID = Integer.parseInt(inputID_str);
			} catch (Exception e) {
				isDigit = false;
			}
		} while (isDigit == false);
		return inputID;
	}
	public int inputCountCommand() {
		// 갯수 입력
		do {
			try {
				System.out.print("몇 개를 주문하시겠습니까?\n__");
				inputCount = in.nextInt();
			} catch (Exception e) {
				in.nextLine();
			}
		} while (inputCount < 1 || inputCount > 9);
		return inputCount;
	}
	
	public int inputAdvantageCommand() {
		// 우대사항 입력
		do {
			try {
				System.out.print("우대사항을 입력하세요.\n1. 없음(나이는 자동처리)\n2. 장애인\n3. 국가유공자\n4. 다자녀\n5. 임산부\n__");
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
