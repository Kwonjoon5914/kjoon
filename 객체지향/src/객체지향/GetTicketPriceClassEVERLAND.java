package ��ü����;

public class GetTicketPriceClassEVERLAND {

	int returnPrice;

	public GetTicketPriceClassEVERLAND() {
		returnPrice = 0;
	}

	public int getTicketPrice(int inputType, String ageName, int treatNum) {
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
		final int MERIT3_DAY1_NOON_TEEN = 23000;
		final int MERIT3_DAY1_NOON_ADULT = 27000;

		final int MERIT4_DAY1_NOON_KID_ELDER = 34000;
		final int MERIT4_DAY1_NOON_TEEN = 36000;
		final int MERIT4_DAY1_NOON_ADULT = 43000;

		final int MERIT5_DAY1_NOON_ADULT = 45000;

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

		// Ƽ�� ���� ���
		String ticket_name = "", treat_name = "";
		switch (inputType) {
		case 1: // �ְ���
			ticket_name = "�ְ���";
			switch (treatNum) {
			case 1: // �ְ��� - ���̿� ���� ���
				switch (ageName) {
				case "����":
				case "���":
					returnPrice = MERIT1_DAY1_NOON_KID_ELDER;
					treat_name = "���̿� ���� ��� ����";
					break;
				case "û�ҳ�":
					returnPrice = MERIT1_DAY1_NOON_TEEN;
					treat_name = "���̿� ���� ��� ����";
					break;
				case "�":
					returnPrice = MERIT1_DAY1_NOON_ADULT;
					treat_name = "��� ����";
					break;
				case "����":
					returnPrice = BABY;
					treat_name = "���̿� ���� ��� ����";
					break;
				}
				break;
			case 2: // �ְ��� - ����� ���
				treat_name = "����� ��� ����";
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
				treat_name = "���������� ��� ����";// ���������� �ִ� 2�α��� 50�� ����
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
				treat_name = "���ڳ� ���� ��� ����";
				switch (ageName) {
				case "����":
				case "���":
					treat_name = "���ڳ� ���� ��� ����";
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
				treat_name = "�ӻ�� ��� ����";
				switch (ageName) {
				case "�":
					returnPrice = MERIT5_DAY1_NOON_ADULT;
					break;
				}
				break;
			}
			break;
		case 2: // �߰���
			ticket_name = "�߰���";
			switch (treatNum) {
			case 1: // �߰��� - ���̿� ���� ���
				switch (ageName) {
				case "����":
				case "���":
					returnPrice = MERIT1_DAY1_NIGHT_KID_ELDER;
					treat_name = "���̿� ���� ��� ����";
					break;
				case "û�ҳ�":
					returnPrice = MERIT1_DAY1_NIGHT_TEEN;
					treat_name = "���̿� ���� ��� ����";
					break;
				case "�":
					returnPrice = MERIT1_DAY1_NIGHT_ADULT;
					treat_name = "��� ����";
					break;
				case "����":
					returnPrice = BABY;
					treat_name = "���̿� ���� ��� ����";
					break;
				}
				break;
			case 2: // �߰��� - ����� ���
				treat_name = "����� ��� ����";
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
					break;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;

			case 3: // �߰��� - ���������� ���
				treat_name = "���������� ��� ����";// ���������� �ִ� 2�α��� 50�� ����
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
					break;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;

			case 4: // �߰��� - ���ڳ� ���� ���
				treat_name = "���ڳ� ���� ��� ����";
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
					break;
				case "����":
					returnPrice = BABY;
					break;
				}
				break;

			case 5: // �߰��� - �ӻ�� ���
				treat_name = "�ӻ�� ��� ����";
				switch (ageName) {
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
