import java.util.Scanner;

public class �����Բ� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int inputType = 0, inputID = 0, inputCount = 0, inputAdvantage = 0; // Ű����� ���� �Է¹޴� �� ����
		int outputPrice = 0; // ���� ��� �ݾ� ����
		int age, ageType = 0;
		Scanner in;
		// �Է�
		in = new Scanner(System.in);
		while (true) {
			// ���� �Է�
			do {
				try {
					System.out.print("������ �����ϼ���\n1. �ְ���\n2. �߰���\n99. ����__");
					inputType = in.nextInt();
					if (inputType != 1 && inputType != 2 && inputType != 99) {
								System.out.println("�߸� �Է��ϼ̽��ϴ�.");
					}
				} catch (Exception e) {
							System.out.println("�߸� �Է��ϼ̽��ϴ�.");
				}
				in.nextLine();
			} while (inputType != 1 && inputType != 2 && inputType != 99);
			if(inputType == 99) {
					break;
			}
			String inputID_str;
			// �ֹι�ȣ �Է�
			boolean isDigit = true;
			do {
				do {
					System.out.print("�ֹι�ȣ ���ڸ��� �Է��ϼ���\n__");
					inputID_str = in.nextLine();
				}while(inputID_str.length() != 6);
				isDigit = true;
				try {
					inputID = Integer.parseInt(inputID_str);
				}catch(Exception e) {
					isDigit = false;
				}
			}while(isDigit == false);
			
			// ���� �Է�
			do {
				try {
					System.out.print("�� ���� �ֹ��Ͻðڽ��ϱ�?\n__");
					inputCount = in.nextInt();
				} catch (Exception e) {
					in.nextLine();
				}
			} while (inputCount < 1 || inputCount > 9);
			
			// ������ �Է�
			do {
				try {
					System.out.print("�������� �Է��ϼ���.\n1. ����(���̴� �ڵ�ó��)\n2. �����\n3. ����������\n4. ���ڳ�\n5. �ӻ��\n__");
					inputAdvantage = in.nextInt();
				} catch (Exception e) {
					in.nextLine();
				}
			} while (inputAdvantage < 0 || inputAdvantage > 5);

			// ó��
			// ���� ���
			inputID = inputID / 10000;
			if (inputID <= 19) {
				age = 2019 - (inputID + 2000) + 1;
			} else {
				age = 2019 - (inputID + 1900) + 1;
			}
			// ageType : 0(����), 1(û�ҳ�), 2(����/���), 3(����)
			if (age >= 13 && age <= 18) { // û�ҳ�
				ageType = 1;
			} else if ((age >= 3 && age <= 12) || age >= 65) { // ���� or ���
				ageType = 2;
			} else if (age <= 2) { // 3������ ����
				ageType = 3;
			}

			// ����ó��
			if (inputType == 1) { // �ְ���
				switch (ageType) { // ����
				case 0: // ����
					switch (inputAdvantage) {
					case 1:
						outputPrice = 54000;
						break;
					case 2: // �����
						outputPrice = 33000;
						break;
					case 3: // ����������
						outputPrice = 27000;
						break;
					case 4: // ���ڳ�
						outputPrice = 43000;
						break;
					case 5: // �ӻ��
						outputPrice = 45000;
						break;
					}
					case 1: // û�ҳ�
						outputPrice = 46000;
						break;
					case 2: // ����/���
						outputPrice = 43000;
						break;
					case 3: // ����
						outputPrice = 0;
						break;
				}
			} else if (inputType == 2) { // �߰���
				switch (ageType) {
				case 0:
					outputPrice = 45000;
					break;
				case 1:
					outputPrice = 39000;
					break;
				case 2:
					outputPrice = 36000;
					break;
				case 3:
					outputPrice = 0;
					break;
				}
			}
			// ���� ó��
			outputPrice = outputPrice * inputCount;

			// ���
			System.out.printf("������ %d�� �Դϴ�.\n�����մϴ�.\n\n", outputPrice);
			System.out.println("======================== �������� ========================");
			System.out.printf("%5s %5s X %5d %10d��   %s\n", "�ְ���", "�", 2, 105000, "����� ��� ����");
			System.out.println("=======================================================");
		}
		in.close();
	}
}
