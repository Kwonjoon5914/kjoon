package ���α׷��ְ���;

import java.util.Scanner;

public class ����2 {
//�� ���� ���ڸ� �Է� �޾� ū ���� ����ϴ� ���α׷� �ۼ�
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int a, b;
		System.out.printf("���� A �Է� : ");
		a = in.nextInt();
		System.out.printf("���� B �Է� : ");
		b = in.nextInt();
		if(a >= b) {
			System.out.printf("ū ���ڴ� %d �Դϴ�. ", a);
		} else {
			System.out.printf("ū ���ڴ� %d �Դϴ�. ", b);
		in.close();
		}
	}
}