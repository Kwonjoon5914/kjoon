package 객체지향;


public class GetTicketNameClassEVERLAND {
	String ticket_name;
	
	public GetTicketNameClassEVERLAND() {
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
