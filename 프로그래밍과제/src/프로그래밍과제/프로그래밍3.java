package ���α׷��ְ���;

import java.util.Scanner;

public class ���α׷���3 {
	/*4������ */
	public static void main(String[] args) {
		
	Scanner in = new Scanner(System.in);
	int sec, min, hor;
	int inputTime;
	System.out.print("�� ���� ������ �Է��ϼ��� : ");
	inputTime = in.nextInt();
	// �ð�
	hor = inputTime / 3600;
	inputTime = inputTime - (3600 * hor);
	// ��
	min = inputTime / 60;
	// ��
	sec = inputTime - (60 * min);
	System.out.printf("%d�ð�", hor);
	System.out.printf("%d��", min);
	System.out.printf("%d��", sec);
	in.close();
	}
}