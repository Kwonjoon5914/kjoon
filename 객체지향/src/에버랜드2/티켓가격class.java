package ��������2;

public class Ƽ�ϰ���class {

	int returnPrice;

	public Ƽ�ϰ���class() {
		returnPrice = 0;
	}

	public int Getticketprice(int inputType, String ageName, int treatNum) {
		// ���
		final int BABY = 0;
		// �ְ���

		final int MERIT1_DAY1_NOON_KID_ELDER = 43000;
		final int MERIT1_DAY1_NOON_TEEN = 46000;
		final int MERIT1_DAY1_NOON_ADULT = 54000;

		final int MERIT2_DAY1_NOON_KID_ELDER = 26000;
		final int MERIT2_DAY1_NOON_TEEN = 28000;
		final int MERIT2_DAY1_NOON_ADULT = 33000;

		final int MERIT3_DAY1_NOON_KID_ELDER = 21500;
		final int MERIT3_DAY1_NOON_TEEN = 36000;
		final int MERIT3_DAY1_NOON_ADULT = 43000;

		final int MERIT4_DAY1_NOON_KID_ELDER = 34000;
		final int MERIT4_DAY1_NOON_TEEN = 36000;
		final int MERIT4_DAY1_NOON_ADULT = 43000;

		final int MERIT5_DAY1_NOON_ADULT = 45000;
		final int MERIT5_DAY1_NOON_TEEN = 45000;

		// �߰���
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
		final int MERIT5_DAY1_NIGHT_TEEN = 36000;

		// Ƽ�� ���� ���
		String ticket_name1 = "", treat_name1 = "";
		switch (inputType) {
		case 1: // �ְ���
			ticket_name1 = "�ְ���";
			switch (treatNum) {
			case 1: // �ְ��� - ���̿� ���� ���
				switch (ageName) {
				case "����":
				case "���":
					returnPrice = MERIT1_DAY1_NOON_KID_ELDER;
					treat_name1 = "���̿� ���� ��� ����";
					break;
				case "û�ҳ�":
					returnPrice = MERIT1_DAY1_NOON_TEEN;
					treat_name1 = "���̿� ���� ��� ����";
					break;
				case "�":
					returnPrice = MERIT1_DAY1_NOON_ADULT;
					treat_name1 = "��� ����";
					break;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;
			case 2: // �ְ��� - ����� ���
				treat_name1 = "����� ��� ����";
				switch (ageName) {
				case "����":
				case "���":
					returnPrice = MERIT2_DAY1_NOON_KID_ELDER;
					break;
				case "û�ҳ�":
					returnPrice = MERIT2_DAY1_NOON_TEEN;
					break;
				case "�":
					returnPrice = MERIT2_DAY1_NOON_ADULT;
					break;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;
			case 3: // �ְ��� - ���������� ���
				treat_name1 = "���������� ��� ����"; // ���������� �ִ� 2�α��� 50���� ����
				switch (ageName) {
				case "����":
				case "���":
					returnPrice = MERIT3_DAY1_NOON_KID_ELDER;
					break;
				case "û�ҳ�":
					returnPrice = MERIT3_DAY1_NOON_TEEN;
					break;
				case "�":
					returnPrice = MERIT3_DAY1_NOON_ADULT;
					break;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;
			case 4: // �ְ��� - ���ڳ� ���� ���
				treat_name1 = "���ڳ� ���� ��� ����";
				switch (ageName) {
				case "����":
				case "���":
					treat_name1 = "���ڳ� ���� ��� ����";
					returnPrice = MERIT4_DAY1_NOON_KID_ELDER;
					break;
				case "û�ҳ�":
					returnPrice = MERIT4_DAY1_NOON_TEEN;
					break;
				case "�":
					returnPrice = MERIT4_DAY1_NOON_ADULT;
					break;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;

			case 5: // �ְ��� - �ӻ�� ���
				treat_name1 = "�ӻ�� ��� ����";
				switch (ageName) {
				case "û�ҳ�":
					returnPrice = MERIT5_DAY1_NOON_TEEN;
					break;
				case "�":
					returnPrice = MERIT5_DAY1_NOON_ADULT;
					break;
				}
				break;
			}
			break;
		case 2: // �߰���
			ticket_name1 = "�߰���";
			switch (treatNum) {
			case 1: // �߰��� - ���̿� ���� ���
				switch (ageName) {
				case "����":
				case "���":
					returnPrice = MERIT1_DAY1_NIGHT_KID_ELDER;
					treat_name1 = "���̿� ���� ��� ����";
					break;
				case "û�ҳ�":
					returnPrice = MERIT1_DAY1_NIGHT_TEEN;
					treat_name1 = "���̿� ���� ��� ����";
					break;
				case "�":
					returnPrice = MERIT1_DAY1_NIGHT_ADULT;
					treat_name1 = "��� ����";
				case "����":
					returnPrice = BABY;
					treat_name1 = "���̿� ���� ��� ����";
					break;
				}
				break;
			case 2: // �߰��� - ����� ���
				treat_name1 = "����� ��� ����";
				switch (ageName) {
				case "����":
				case "���":
					returnPrice = MERIT2_DAY1_NIGHT_KID_ELDER;
					break;
				case "û�ҳ�":
					returnPrice = MERIT2_DAY1_NIGHT_TEEN;
					break;
				case "�":
					returnPrice = MERIT2_DAY1_NIGHT_ADULT;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;
			case 3: // �߰��� - ���������� ���
				treat_name1 = "���������� ��� ����";
				switch (ageName) {
				case "����":
				case "���":
					returnPrice = MERIT3_DAY1_NIGHT_KID_ELDER;
					break;
				case "û�ҳ�":
					returnPrice = MERIT3_DAY1_NIGHT_TEEN;
					break;
				case "�":
					returnPrice = MERIT3_DAY1_NIGHT_ADULT;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;
			case 4: // �߰��� - ���ڳ� ���� ���
				treat_name1 = "���ڳ� ���� ��� ����";
				switch (ageName) {
				case "����":
				case "���":
					returnPrice = MERIT4_DAY1_NIGHT_KID_ELDER;
					break;
				case "û�ҳ�":
					returnPrice = MERIT4_DAY1_NIGHT_TEEN;
					break;
				case "�":
					returnPrice = MERIT4_DAY1_NIGHT_ADULT;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;

			case 5: // �߰��� - �ӻ�� ���
				treat_name1 = "�ӻ�� ��� ����";
				switch (ageName) {
				case "û�ҳ�":
					returnPrice = MERIT5_DAY1_NIGHT_TEEN;
					break;
				case "�":
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