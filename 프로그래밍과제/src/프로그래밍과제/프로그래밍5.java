package ���α׷��ְ���;

import java.util.Scanner;

public class ���α׷���5 {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		char c;
		System.out.print("�ҹ��� �Է��ϼ���");
		c = in.next().charAt(0); //�빮�ڿ� �ҹ����� ���� �� ���̴� (int)'A' - (int)'a'�� �̿�
		System.out.println((char)(c-32));
		in.close();
	}
}
