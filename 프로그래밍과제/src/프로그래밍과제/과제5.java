package ���α׷��ְ���;

import java.util.Scanner;

public class ����5 {
//�������� �ƴ����� �Ǵ��ϴ� ���α׷� �ۼ�
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		
		int year;
		System.out.println("���ϴ� ������ �Է��ϼ��� : ");
		year = in.nextInt();
		if ((year%4 == 0 && year%100 != 0) || year%400 == 0) {
			System.out.println("���� �Դϴ�.");
		} else {
			System.out.println("������ �ƴմϴ�.");
		}
		in.close();
	}
}
