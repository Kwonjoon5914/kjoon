package ��������2;

public class �������class {

	String treat_name;

	public �������class() {
		treat_name = "";
	}

	// Ƽ�� ���� ���
	public String Gettreatname(int inputType, String ageName, int treatNum) {

		switch (inputType) {
		case 1: // �ְ���
			switch (treatNum) {
			case 1: // �ְ��� - ���̿� ���� ���
				switch (ageName) {
				case "����":
				case "���":
					treat_name = "���̿� ���� ��� ����";
					break;
				case "û�ҳ�":
					treat_name = "���̿� ���� ��� ����";
					break;
				case "�":
					treat_name = "������";
					break;
				case "����":
					treat_name = "���̿� ���� ��� ����";
					break;
				}
				break;
			case 2: // �ְ��� - ����� ���
				treat_name = "����� ��� ����";
				break;
			case 3: // �ְ��� - ���������� ���
				treat_name = "���������� ��� ����";
				break;
			case 4: // �ְ��� - ���ڳ� ���� ���
				treat_name = "���ڳ� ���� ��� ����";
				break;
			case 5: // �ְ��� - �ӻ�� ���
				treat_name = "�ӻ�� ��� ����";
				break;
			}
			break;
		case 2: // �߰���
			switch (treatNum) {
			case 1: // �߰��� - ���̿� ���� ���
				switch (ageName) {
				case "����":
				case "���":
					treat_name = "���̿� ���� ��� ����";
					break;
				case "û�ҳ�":
					treat_name = "���̿� ���� ��� ����";
					break;
				case "�":
					treat_name = "������";
					break;
				case "����":
					treat_name = "���̿� ���� ��� ����";
					break;
				}
				break;
			case 2: // �߰��� - ����� ���
				treat_name = "����� ��� ����";
				break;
			case 3: // �߰��� - ���������� ���
				treat_name = "���������� ��� ����";
				break;
			case 4: // �߰��� - ���ڳ� ���� ���
				treat_name = "���ڳ� ���� ��� ����";
				break;
			case 5: // �߰��� - �ӻ�� ���
				treat_name = "�ӻ�� ��� ����";
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
