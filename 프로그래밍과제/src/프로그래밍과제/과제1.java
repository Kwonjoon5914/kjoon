package ���α׷��ְ���;

import java.util.Scanner;

public class ����1 {
	//�Է��� ���� Ȧ������ ¦�������� �Ǻ��ϴ� ���α׷��� �ۼ��Ͻÿ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int number;
		System.out.print("���� �Է� : ");
		number = in.nextInt();
		if(number%2 == 0 ) {
			System.out.print("¦�� �Դϴ�.");
		} else {
			System.out.print("Ȧ�� �Դϴ�.");
			in.close();
		}
	}
}