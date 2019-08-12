package 에버랜드2;

public class 우대적용class {

	String treat_name;

	public 우대적용class() {
		treat_name = "";
	}

	// 티켓 가격 계산
	public String Gettreatname(int inputType, String ageName, int treatNum) {

		switch (inputType) {
		case 1: // 주간권
			switch (treatNum) {
			case 1: // 주간권 - 나이에 따른 우대
				switch (ageName) {
				case "소인":
				case "경로":
					treat_name = "나이에 따른 우대 적용";
					break;
				case "청소년":
					treat_name = "나이에 따른 우대 적용";
					break;
				case "어른":
					treat_name = "우대없음";
					break;
				case "유아":
					treat_name = "나이에 따른 우대 적용";
					break;
				}
				break;
			case 2: // 주간권 - 장애인 우대
				treat_name = "장애인 우대 적용";
				break;
			case 3: // 주간권 - 국가유공자 우대
				treat_name = "국가유공자 우대 적용";
				break;
			case 4: // 주간권 - 다자녀 가정 우대
				treat_name = "다자녀 가정 우대 적용";
				break;
			case 5: // 주간권 - 임산부 우대
				treat_name = "임산부 우대 적용";
				break;
			}
			break;
		case 2: // 야간권
			switch (treatNum) {
			case 1: // 야간권 - 나이에 따른 우대
				switch (ageName) {
				case "소인":
				case "경로":
					treat_name = "나이에 따른 우대 적용";
					break;
				case "청소년":
					treat_name = "나이에 따른 우대 적용";
					break;
				case "어른":
					treat_name = "우대없음";
					break;
				case "유아":
					treat_name = "나이에 따른 우대 적용";
					break;
				}
				break;
			case 2: // 야간권 - 장애인 우대
				treat_name = "장애인 우대 적용";
				break;
			case 3: // 야간권 - 국가유공자 우대
				treat_name = "국가유공자 우대 적용";
				break;
			case 4: // 야간권 - 다자녀 가정 우대
				treat_name = "다자녀 가정 우대 적용";
				break;
			case 5: // 야간권 - 임산부 우대
				treat_name = "임산부 우대 적용";
				break;
			}
			break;
		}
		return treat_name;
	}

	@Override
	protected void finalize() throws Throwable {

	}
}
