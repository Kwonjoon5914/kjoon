package ���α׷��ְ���;

import java.util.Scanner;

public class �������� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int x;
		int y;
		int total;
		System.out.print("���θ� �Է��ϼ��� : ");
		x = in.nextInt();
		System.out.print("���θ� �Է��ϼ��� : ");
		y = in.nextInt();
		total = x * y;
		System.out.printf("���̴� %d �Դϴ�. \n", total);
		int inputData;
		System.out.print("������ �Է��ϼ���. : ");
		inputData = in.nextInt();
		System.out.printf("�Է��Ͻô� ���� %s �Դϴ�.\n",
					(inputData % 2) ==0 ? "¦��" : "Ȧ��");
	in.close();
	}

}
