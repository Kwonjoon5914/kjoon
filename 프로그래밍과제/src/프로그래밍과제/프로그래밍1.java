package ���α׷��ְ���;

import java.util.Scanner;

public class ���α׷���1 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int x;
		int total;
		System.out.print("������ �Է��ϼ��� : ");
		x = in.nextInt();
		total = x * x;
		System.out.printf("%d�� ������ %d �Դϴ�.", x, total);
		in.close();
	}
}