package ���α׷��ְ���;

import java.util.Scanner;

public class ����3 {
//5���� ���ڸ� �Է� �޾� ���� ���� ����ϴ� ���α׷� �ۼ�
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int a, b, c, d, e;
		int max, min;
		System.out.printf("���� A �Է� : ");
		a = in.nextInt();
		System.out.printf("���� B �Է� : ");
		b = in.nextInt();
		System.out.printf("���� C �Է� : ");
		c = in.nextInt();
		System.out.printf("���� D �Է� : ");
		d = in.nextInt();
		System.out.printf("���� E �Է� : ");
		e = in.nextInt();
		max = a;
		if(max <= b) {
			max = b;
		}
		if(max <= c) {
			max = c;
		}
		if(max <= d) {
			max = d;
		}
		if(max <= e) {
			max = e;
		}
		min = a;
		if(min >= b) {
			min = b;
		}
		if(min >= c) {
			min = c;
		}
		if(min >= d) {
			min = d;
		}
		if(min >= e) {
			min = e;
			System.out.printf("�ִ밪�� %d �Դϴ�.\n", max);
			System.out.printf("�ּҰ��� %d �Դϴ�.", min);
			in.close();		
		}
	}
}