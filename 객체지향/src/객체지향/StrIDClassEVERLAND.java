package ��ü����;

public class StrIDClassEVERLAND {

	String ID_name;
	public StrIDClassEVERLAND() {
		ID_name = "";
	}
	
	public String stringID(int inputID) {
		if (inputID < 3) { // ����
			ID_name = "����";
		} else if (3 <= inputID && inputID < 13) { // ����
			ID_name = "����";
		} else if (13 <= inputID && inputID < 19) { // û�ҳ�
			ID_name = "û�ҳ�";
		} else if (19 <= inputID && inputID < 66) { // �
			ID_name = "�";
		} else { // ���
			ID_name = "���";
		}
		return ID_name;
	}

	@Override
	protected void finalize() throws Throwable {
	
	}

}
