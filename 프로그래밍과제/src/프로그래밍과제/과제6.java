package ���α׷��ְ���;

import java.util.Scanner;

public class ����6 {
//�Է��� �⵵�� �� ���� ������ ���� ����ϱ�
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		
		int year;
		System.out.println("���ϴ� ������ �Է��ϼ��� : ");
		year = in.nextInt();
		System.out.println(year + "���� ������ �����ϴ�.");
		System.out.println("1�� : 31��");
		if ((year%4 == 0 && year%100 != 0) || year%400 == 0) {
			System.out.println("2�� : 29�� * ���� 29��, ��� 28��");
		} else {
			System.out.println("2�� : 28�� ");
		}
		System.out.println("3�� : 31��");
		System.out.println("4�� : 30��");
		System.out.println("5�� : 31��");
		System.out.println("6�� : 31��");
		System.out.println("7�� : 30��");
		System.out.println("8�� : 31��");
		System.out.println("9�� : 30��");
		System.out.println("10�� : 31��");
		System.out.println("11�� : 30��");
		System.out.println("12�� : 31��");
		
		in.close();
	}
}