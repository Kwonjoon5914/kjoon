package ��ü����;

import java.util.Scanner;

public class ImportClassEVERLAND {

	public Scanner in;
	int inputType, inputID, inputCount, inputAdvantage;
	String inputID_str;
	boolean isDigit;

	public ImportClassEVERLAND() {
		in = new Scanner(System.in);
		inputType = 0;
		inputID = 0;
		inputID_str = "";
		isDigit = true;
		inputCount = 0;
		inputAdvantage = 0;
	}
	/*
	public void inputAll() {
		inputTypeCommand();
		inputIDCommand();
		inputCountCommand();
		inputAdvantageCommand();
	}*/

	// �Է� �޼���
	public int inputTypeCommand() {
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
		return inputType;
	}
	public int inputIDCommand() {
		// �ֹι�ȣ �Է�
		do {
			do {
				System.out.print("�ֹι�ȣ ���ڸ��� �Է��ϼ���\n__");
				inputID_str = in.nextLine();
			} while (inputID_str.length() != 6);
			isDigit = true;
			try {
				inputID = Integer.parseInt(inputID_str);
			} catch (Exception e) {
				isDigit = false;
			}
		} while (isDigit == false);
		return inputID;
	}
	public int inputCountCommand() {
		// ���� �Է�
		do {
			try {
				System.out.print("�� ���� �ֹ��Ͻðڽ��ϱ�?\n__");
				inputCount = in.nextInt();
			} catch (Exception e) {
				in.nextLine();
			}
		} while (inputCount < 1 || inputCount > 9);
		return inputCount;
	}
	
	public int inputAdvantageCommand() {
		// ������ �Է�
		do {
			try {
				System.out.print("�������� �Է��ϼ���.\n1. ����(���̴� �ڵ�ó��)\n2. �����\n3. ����������\n4. ���ڳ�\n5. �ӻ��\n__");
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
