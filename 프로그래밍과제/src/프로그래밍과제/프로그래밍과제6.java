package ���α׷��ְ���;

import java.util.Scanner;

public class ���α׷��ְ���6 {
	//Ű����� ȭ���µ��� �Է¹޾� �����µ��� ȯ���� ����ϴ� ���α׷��� �ۼ��Ͻÿ�.
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int f;
		float c;
		System.out.print("ȭ���µ� �Է��ϼ���.");
		f = in.nextInt();
		c = 5*(f-32)/9;
		System.out.printf("%f�� �Դϴ�.", c);
		in.close();
	}
}
