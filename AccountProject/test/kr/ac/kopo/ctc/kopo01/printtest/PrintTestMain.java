package kr.ac.kopo.ctc.kopo01.printtest;

import java.util.Scanner;

import kr.ac.kopo.ctc.kopo01.domain.Account;
import kr.ac.kopo.ctc.kopo01.domain.Accountitem;

public class PrintTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in;
		int inputType, inputType1,inputType2, inputID, inputCount, inputIncome, inputOutcome;
		boolean isDigit;

		in = new Scanner(System.in);
		inputType = 0;
		inputType1 = 0;
		inputType2 = 0;
		inputID = 0;
		inputCount = 0;
		inputIncome = 0;
		inputOutcome = 0;
		do {
			try {
				System.out.print("����ȭ��\n1. ����� �ۼ�\n2. ����� ��ȸ\n3. ����� ����\n4. ��� �ڷ�");
				inputType = in.nextInt();
				if (inputType != 1 && inputType != 2 && inputType != 3 && inputType != 4) {
					System.out.println("�߸� �Է��ϼ̽��ϴ�.");
				}

				if (inputType == 1) {
					System.out.println("����� �ۼ�\n1. ����\n2. ����");
					inputType1 = in.nextInt();

					if (inputType1 == 1) {
						System.out.println("�� ��\n��¥ �Է�\t���� ����\t�� �ݾ�");
					}

					if (inputType1 == 2) {
						System.out.println("�� ��\n��¥ �Է�\t���� ����\t�� ��\tī ��\t�� �ݾ�");
					}
				}
				if (inputType == 2) {
					System.out.println("����� ��ȸ\n1. ������ȸ\n2. ������ȸ");
					inputType1 = in.nextInt();
					if (inputType1 == 1) {
						System.out.println("���� ��ȸ\n1. �Ϻ�\n2. ����\n3. ����");
						inputType2 = in.nextInt();
						if (inputType2 == 1) {
							
						}
					}
					if (inputType1 == 2) {
						System.out.println("���� ��ȸ\n1. �Ϻ�\n2. ����\n3. ����");
					}
				}

				if (inputType == 3) {
					System.out.println("����� ����\n1. ����\n2. ����");
					inputType1 = in.nextInt();
					if (inputType1 == 1) {
						System.out.println("���� ����");
					}
				}
				if (inputType == 4) {
					System.out.println("��� �ڷ�\n1. ���� ���� �� ���� ���\n2. ���� ����-���� ����");
				}
			} catch (Exception e) {
				System.out.println("�߸� �Է��ϼ̽��ϴ�.");
			}
			in.nextLine();
		} while (inputType != 1 && inputType != 2 && inputType != 3 && inputType != 4);

		return;
	}
}