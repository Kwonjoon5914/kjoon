package ��������2;

public class ����class {
	String ticket_name;

	public ����class() {
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
