package ��ü����;


public class GetTicketNameClassEVERLAND {
	String ticket_name;
	
	public GetTicketNameClassEVERLAND() {
		ticket_name = "";
	}

	public String getTicketName(int inputType) {
		
		
		switch (inputType) {
		case 1: // �ְ���
			ticket_name = "�ְ���";
			break;
		case 2: // �߰���
			ticket_name = "�߰���";
			break;
		}
		return ticket_name;
	}
	
	@Override
	protected void finalize() throws Throwable {
		
	}

}
