package ��������2;

import java.util.Scanner;

public class �Է�class {

	public Scanner in;// �������� ����
	int inputType, inputID, inputCount, inputAdvantage; // ����
	String inputID_str;
	boolean isDigit;

	public �Է�class() {
		in = new Scanner(System.in);// �ؿ����� �ʱ�ȭ //�̰��� �ո����̴�.
		inputType = 0;
		inputID = 0;
		inputCount = 0;
		inputAdvantage = 0;
		isDigit = true;
		inputID_str = "";
	}

	public int inputTypeCommand() {
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
			in.nextLine(); // �� ����
		} while (inputType != 1 && inputType != 2 && inputType != 99);
		return inputType;
	}

	// �ֹι�ȣ ���ڸ� �Է�
	public int inputIDCommand() {
		do {
			do {
				System.out.print("�ֹι�ȣ ���ڸ��� �Է��ϼ���\n__");
				inputID_str = in.nextLine();
			} while (inputID_str.length() != 6);
			isDigit = true;
			try {
				inputID = Integer.parseInt(inputID_str); // ���ڿ� -> int�� ��ȯ
			} catch (Exception e) {
				isDigit = false;
			}
		} while (isDigit == false); // �ٽ� ����
		return inputID;
	}

	// ���� �Է�
	public int inputCountCommand() {
		do {
			try {
				System.out.print("�� ���� �ֹ��Ͻðڽ��ϱ�?__");
				inputCount = in.nextInt();
			} catch (Exception e) {
				in.nextLine();
			}
		} while (inputCount < 1 || inputCount > 9);
		return inputCount;
	}

	// ������ �Է�
	public int inputAdvantageCommand() {
		do {
			try {
				System.out.print("�������� �Է��ϼ���.\n1. ����\n2. �����\n3. ����������\n4. ���ڳ�\n5. �ӻ��\n__");
				inputAdvantage = in.nextInt();
			} catch (Exception e) {
				in.nextLine();
			}
		} while (inputAdvantage < 1 || inputAdvantage > 5);
		return inputAdvantage;
	}

	// ���� -> �Ҹ���
	protected void finalize() throws Throwable {
		in.close();
	}
}
