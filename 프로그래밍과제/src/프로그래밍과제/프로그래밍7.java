package ���α׷��ְ���;

import java.util.Scanner;

public class ���α׷���7 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
        int w;
		int x;
		int y;
		int z;
        System.out.print("������ �Է��ϼ���. :");
		w = in.nextInt();
		x = w%20;
		y = w%4;
		z = w%5;
		System.out.print("�Է��� ������ 4�� 5�� ���ÿ� ������");
		System.out.printf("%s", (x==0) ? "���ϴ�." :"���� �ʽ��ϴ�.\n");
		System.out.print("�Է��� ������ 4 �Ǵ� 5�� ������");
		if(y==0||z==0)
		{System.out.println("���ϴ�.");}
		else
		{System.out.println("���� �ʽ��ϴ�.");}
		if(y==0&&z!=0)
		{System.out.println("�Է��� ������ 4�� 5 �� �ϳ��� ������������ �� �� ��ηδ� ���������� �ʽ��ϴ�.");}
		if(y!=0&&z==0)
		{System.out.println("�Է��� ������ 4�� 5 �� �ϳ��� ������������ �� �� ��ηδ� ���������� �ʽ��ϴ�.");}
		in.close();
	}
}