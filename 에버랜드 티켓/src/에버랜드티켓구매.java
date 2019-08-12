import java.util.Scanner;

public class 에버랜드티켓구매 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int ticket = 0, ticket_number = 0, prefer = 0, ticket_price = 0;
		int inputData = 0, age = 0;
		String adult_child = "", variable = "", variable2 = "";

		// 권종입력
		System.out.println("권종을 선택하세요.\n1.주간권\n2.야간권\n");
		ticket = in.nextInt();
		variable2 = (ticket == 1) ? "주간권" : "야간권";
		// 주민번호 입력
		System.out.println("주민번호 앞자리를 입력하세요.");
		inputData = in.nextInt();
		inputData = inputData / 10000;
		if(inputData <= 19) {
			age = 2019 - (inputData + 2000) + 1; //2000 년대
		} else {
			age = 2019 - (inputData + 1900) + 1; //1900 년대
		}
		
		if (age > 65) {
			adult_child = "경로";
		} else if (19 < age && 65 >= age) {
			adult_child = "성인";
		} else if (age >= 12 && age <= 19) {
			adult_child = "청소년";
		} else if (age >= 3 && age < 12) {
			adult_child = "소인";
		} else if(age < 3){
			adult_child = "유아";
		}
		// 갯수 입력
		System.out.println("몇 개를 주문하시겠습니까?");
		ticket_number = in.nextInt();

		// 우대사항 선택
		System.out.println("우대사항을 선택하세요.\n 1.없음\n 2.장애인\n 3.국가유공자\n 4.다자녀\n 5.임산부");
		prefer = in.nextInt();

		switch (prefer) {
		case 1:
			variable = "우대사항 없음";
			switch (adult_child) {
			case "성인":
				ticket_price = (ticket == 1) ? 54000 : 45000;
				break;
			case "청소년":
				ticket_price = (ticket == 1) ? 46000 : 39000;
				break;
			case "경로":
			case "소인":
				ticket_price = (ticket == 1) ? 43000 : 36000;
				break;
			case "유아":
				ticket_price = 0;
				break;
			}
			break;
		case 2:
			variable = "장애인 우대 적용";
			switch (adult_child) {
			case "성인":
				ticket_price = (ticket == 1) ? 33000 : 27000;
				break;
			case "청소년":
				ticket_price = (ticket == 1) ? 28000 : 24000;
				break;
			case "경로":
			case "소인":
				ticket_price = (ticket == 1) ? 26000 : 23000;
				break;
			case "유아":
				ticket_price = 0;
				break;
			}
			break;
		case 3:
			variable = "국가유공자 우대 적용";
			switch (adult_child) {
			case "성인":
				ticket_price = (ticket == 1) ? 27000 : 22500;
				break;
			case "청소년":
				ticket_price = (ticket == 1) ? 23000 : 19500;
				break;
			case "경로":
			case "소인":
				ticket_price = (ticket == 1) ? 21500 : 18000;
				break;
			case "유아":
				ticket_price = 0;
				break;
			}
			break;
		case 4:
			variable = "다자녀 우대 적용";
			switch (adult_child) {
			case "성인":
				ticket_price = (ticket == 1) ? 43000 : 36000;
				break;
			case "청소년":
				ticket_price = (ticket == 1) ? 36000 : 31000;
				break;
			case "경로":
			case "소인":
				ticket_price = (ticket == 1) ? 34000 : 28000;
				break;
			case "유아":
				ticket_price = 0;
				break;
			}
			break;
		case 5:
			variable = "임산부 우대 적용";
			switch (adult_child) {
			case "성인":
				ticket_price = (ticket == 1) ? 45000 : 36000;
				break;
			default:
				System.out.println("해당되지 않습니다.");
				break;
			}
			break;
		}
		// 가격
		ticket_price = ticket_price * ticket_number;

		System.out.println("=======================================================");
		System.out.printf("가격은 %d원 입니다.\n감사합니다.\n\n", ticket_price);
		System.out.printf("%s    %s%3d매     %d원     %s\n", variable2, adult_child, ticket_number, ticket_price, variable);
		System.out.println("=======================================================");
		in.close();
	}
}
