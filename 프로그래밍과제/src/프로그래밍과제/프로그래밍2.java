package ���α׷��ְ���;

import java.util.Scanner;

public class ���α׷���2 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int r, h = 0;
		double total;
		System.out.print("������� �ظ��� ��������? ");
		r = in.nextInt();
		System.out.print("������� ���̴�? ");
		h = in.nextInt();
		total = (double)3.14 * (double)r * (double)r * (double)h;
		System.out.printf("������� ���Ǵ� %.1f", total);
		in.close();
	}
}
