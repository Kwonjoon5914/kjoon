package 객체지향;

public class GetTicketPriceClassEVERLAND {

	int returnPrice;

	public GetTicketPriceClassEVERLAND() {
		returnPrice = 0;
	}

	public int getTicketPrice(int inputType, String ageName, int treatNum) {
		// 요금
		final int BABY = 0;
		// 주간권

		final int MERIT1_DAY1_NOON_KID_ELDER = 43000;
		final int MERIT1_DAY1_NOON_TEEN = 46000;
		final int MERIT1_DAY1_NOON_ADULT = 54000;

		final int MERIT2_DAY1_NOON_KID_ELDER = 26000;
		final int MERIT2_DAY1_NOON_TEEN = 28000;
		final int MERIT2_DAY1_NOON_ADULT = 33000;

		final int MERIT3_DAY1_NOON_KID_ELDER = 21500;
		final int MERIT3_DAY1_NOON_TEEN = 23000;
		final int MERIT3_DAY1_NOON_ADULT = 27000;

		final int MERIT4_DAY1_NOON_KID_ELDER = 34000;
		final int MERIT4_DAY1_NOON_TEEN = 36000;
		final int MERIT4_DAY1_NOON_ADULT = 43000;

		final int MERIT5_DAY1_NOON_ADULT = 45000;

		// 야간권
		final int MERIT1_DAY1_NIGHT_KID_ELDER = 36000;
		final int MERIT1_DAY1_NIGHT_TEEN = 39000;
		final int MERIT1_DAY1_NIGHT_ADULT = 45000;

		final int MERIT2_DAY1_NIGHT_KID_ELDER = 23000;
		final int MERIT2_DAY1_NIGHT_TEEN = 24000;
		final int MERIT2_DAY1_NIGHT_ADULT = 27000;

		final int MERIT3_DAY1_NIGHT_KID_ELDER = 18000;
		final int MERIT3_DAY1_NIGHT_TEEN = 19500;
		final int MERIT3_DAY1_NIGHT_ADULT = 22500;

		final int MERIT4_DAY1_NIGHT_KID_ELDER = 28000;
		final int MERIT4_DAY1_NIGHT_TEEN = 31000;
		final int MERIT4_DAY1_NIGHT_ADULT = 36000;

		final int MERIT5_DAY1_NIGHT_ADULT = 36000;

		// 티켓 가격 계산
		String ticket_name = "", treat_name = "";
		switch (inputType) {
		case 1: // 주간권
			ticket_name = "주간권";
			switch (treatNum) {
			case 1: // 주간권 - 나이에 따른 우대
				switch (ageName) {
				case "소인":
				case "경로":
					returnPrice = MERIT1_DAY1_NOON_KID_ELDER;
					treat_name = "나이에 따른 우대 적용";
					break;
				case "청소년":
					returnPrice = MERIT1_DAY1_NOON_TEEN;
					treat_name = "나이에 따른 우대 적용";
					break;
				case "어른":
					returnPrice = MERIT1_DAY1_NOON_ADULT;
					treat_name = "우대 없음";
					break;
				case "유아":
					returnPrice = BABY;
					treat_name = "나이에 따른 우대 적용";
					break;
				}
				break;
			case 2: // 주간권 - 장애인 우대
				treat_name = "장애인 우대 적용";
				switch (ageName) {
				case "소인":
				case "경로":
						returnPrice = MERIT2_DAY1_NOON_KID_ELDER;
					break;
				case "청소년":
						returnPrice = MERIT2_DAY1_NOON_TEEN;
					break;
				case "어른":
						returnPrice = MERIT2_DAY1_NOON_ADULT;
					break;
				case "유아":
					returnPrice = BABY;
					break;
				}
				break;

			case 3: // 주간권 - 국가유공자 우대
				treat_name = "국가유공자 우대 적용";// 국가유공자 최대 2인까지 50퍼 할인
				switch (ageName) {
				case "소인":
				case "경로":
						returnPrice = MERIT3_DAY1_NOON_KID_ELDER;
					break;
				case "청소년":
						returnPrice = MERIT3_DAY1_NOON_TEEN;
					break;
				case "어른":
						returnPrice = MERIT3_DAY1_NOON_ADULT;
					break;
				case "유아":
					returnPrice = BABY;
					break;
				}
				break;

			case 4: // 주간권 - 다자녀 가정 우대
				treat_name = "다자녀 가정 우대 적용";
				switch (ageName) {
				case "소인":
				case "경로":
					treat_name = "다자녀 가정 우대 적용";
					returnPrice = MERIT4_DAY1_NOON_KID_ELDER;
					break;
				case "청소년":
					returnPrice = MERIT4_DAY1_NOON_TEEN;
					break;
				case "어른":
					returnPrice = MERIT4_DAY1_NOON_ADULT;
					break;
				case "유아":
					returnPrice = BABY;
					break;
				}
				break;

			case 5: // 주간권 - 임산부 우대
				treat_name = "임산부 우대 적용";
				switch (ageName) {
				case "어른":
					returnPrice = MERIT5_DAY1_NOON_ADULT;
					break;
				}
				break;
			}
			break;
		case 2: // 야간권
			ticket_name = "야간권";
			switch (treatNum) {
			case 1: // 야간권 - 나이에 따른 우대
				switch (ageName) {
				case "소인":
				case "경로":
					returnPrice = MERIT1_DAY1_NIGHT_KID_ELDER;
					treat_name = "나이에 따른 우대 적용";
					break;
				case "청소년":
					returnPrice = MERIT1_DAY1_NIGHT_TEEN;
					treat_name = "나이에 따른 우대 적용";
					break;
				case "어른":
					returnPrice = MERIT1_DAY1_NIGHT_ADULT;
					treat_name = "우대 없음";
					break;
				case "유아":
					returnPrice = BABY;
					treat_name = "나이에 따른 우대 적용";
					break;
				}
				break;
			case 2: // 야간권 - 장애인 우대
				treat_name = "장애인 우대 적용";
				switch (ageName) {
				case "소인":
				case "경로":
						returnPrice = MERIT2_DAY1_NIGHT_KID_ELDER;
					break;
				case "청소년":
						returnPrice = MERIT2_DAY1_NIGHT_TEEN;
					break;
				case "어른":
						returnPrice = MERIT2_DAY1_NIGHT_ADULT;
					break;
				case "유아":
					returnPrice = BABY;
					break;
				}
				break;

			case 3: // 야간권 - 국가유공자 우대
				treat_name = "국가유공자 우대 적용";// 국가유공자 최대 2인까지 50퍼 할인
				switch (ageName) {
				case "소인":
				case "경로":
						returnPrice = MERIT3_DAY1_NIGHT_KID_ELDER;
					break;
				case "청소년":
						returnPrice = MERIT3_DAY1_NIGHT_TEEN;
					break;
				case "어른":
						returnPrice = MERIT3_DAY1_NIGHT_ADULT;
					break;
				case "유아":
					returnPrice = BABY;
					break;
				}
				break;

			case 4: // 야간권 - 다자녀 가정 우대
				treat_name = "다자녀 가정 우대 적용";
				switch (ageName) {
				case "소인":
				case "경로":
					returnPrice = MERIT4_DAY1_NIGHT_KID_ELDER;
					break;
				case "청소년":
					returnPrice = MERIT4_DAY1_NIGHT_TEEN;
					break;
				case "어른":
					returnPrice = MERIT4_DAY1_NIGHT_ADULT;
					break;
				case "유아":
					returnPrice = BABY;
					break;
				}
				break;

			case 5: // 야간권 - 임산부 우대
				treat_name = "임산부 우대 적용";
				switch (ageName) {
				case "어른":
					returnPrice = MERIT5_DAY1_NIGHT_ADULT;
					break;
				}
				break;
			}
			break;
		}
		return returnPrice;
	}

	@Override
	protected void finalize() throws Throwable {

	}

}
