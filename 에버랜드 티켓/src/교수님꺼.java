import java.util.Scanner;

public class 교수님꺼 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int inputType = 0, inputID = 0, inputCount = 0, inputAdvantage = 0; // 키보드로 부터 입력받는 값 선언
		int outputPrice = 0; // 최종 출력 금액 선언
		int age, ageType = 0;
		Scanner in;
		// 입력
		in = new Scanner(System.in);
		while (true) {
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
			if(inputType == 99) {
					break;
			}
			String inputID_str;
			// 주민번호 입력
			boolean isDigit = true;
			do {
				do {
					System.out.print("주민번호 앞자리를 입력하세요\n__");
					inputID_str = in.nextLine();
				}while(inputID_str.length() != 6);
				isDigit = true;
				try {
					inputID = Integer.parseInt(inputID_str);
				}catch(Exception e) {
					isDigit = false;
				}
			}while(isDigit == false);
			
			// 갯수 입력
			do {
				try {
					System.out.print("몇 개를 주문하시겠습니까?\n__");
					inputCount = in.nextInt();
				} catch (Exception e) {
					in.nextLine();
				}
			} while (inputCount < 1 || inputCount > 9);
			
			// 우대사항 입력
			do {
				try {
					System.out.print("우대사항을 입력하세요.\n1. 없음(나이는 자동처리)\n2. 장애인\n3. 국가유공자\n4. 다자녀\n5. 임산부\n__");
					inputAdvantage = in.nextInt();
				} catch (Exception e) {
					in.nextLine();
				}
			} while (inputAdvantage < 0 || inputAdvantage > 5);

			// 처리
			// 나이 계산
			inputID = inputID / 10000;
			if (inputID <= 19) {
				age = 2019 - (inputID + 2000) + 1;
			} else {
				age = 2019 - (inputID + 1900) + 1;
			}
			// ageType : 0(대인), 1(청소년), 2(소인/경로), 3(무료)
			if (age >= 13 && age <= 18) { // 청소년
				ageType = 1;
			} else if ((age >= 3 && age <= 12) || age >= 65) { // 소인 or 경로
				ageType = 2;
			} else if (age <= 2) { // 3세이하 무료
				ageType = 3;
			}

			// 권종처리
			if (inputType == 1) { // 주간권
				switch (ageType) { // 나이
				case 0: // 대인
					switch (inputAdvantage) {
					case 1:
						outputPrice = 54000;
						break;
					case 2: // 장애인
						outputPrice = 33000;
						break;
					case 3: // 국가유공자
						outputPrice = 27000;
						break;
					case 4: // 다자녀
						outputPrice = 43000;
						break;
					case 5: // 임산부
						outputPrice = 45000;
						break;
					}
					case 1: // 청소년
						outputPrice = 46000;
						break;
					case 2: // 소인/경로
						outputPrice = 43000;
						break;
					case 3: // 무료
						outputPrice = 0;
						break;
				}
			} else if (inputType == 2) { // 야간권
				switch (ageType) {
				case 0:
					outputPrice = 45000;
					break;
				case 1:
					outputPrice = 39000;
					break;
				case 2:
					outputPrice = 36000;
					break;
				case 3:
					outputPrice = 0;
					break;
				}
			}
			// 갯수 처리
			outputPrice = outputPrice * inputCount;

			// 출력
			System.out.printf("가격은 %d원 입니다.\n감사합니다.\n\n", outputPrice);
			System.out.println("======================== 에버랜드 ========================");
			System.out.printf("%5s %5s X %5d %10d원   %s\n", "주간권", "어른", 2, 105000, "장애인 우대 적용");
			System.out.println("=======================================================");
		}
		in.close();
	}
}
