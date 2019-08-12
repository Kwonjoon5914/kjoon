package 에버랜드2;

public class 권종class {
	String ticket_name;

	public 권종class() {
		ticket_name = "";
	}

	public String getTicketName(int inputType) {

		switch (inputType) {
		case 1: // 주간권
			ticket_name = "주간권";
			break;
		case 2: // 야간권
			ticket_name = "야간권";
			break;
		}
		return ticket_name;
	}

	@Override
	protected void finalize() throws Throwable {

	}
}
