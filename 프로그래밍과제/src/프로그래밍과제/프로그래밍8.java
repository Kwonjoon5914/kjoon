package ���α׷��ְ���;

import java.util.Scanner;

public class ���α׷���8 {
	public static void main(String[] args) {
	//Ű����� 0���� 999 ������ ������ �Է� �޾� �� �ڸ����� �� �� ����� ����ϴ� ���α׷��� �ۼ��Ͻÿ�.
	Scanner in = new Scanner(System.in);
    int num;
    System.out.print("0~999 ������ ���ڸ� �Է��ϼ��� : ");
    num = in.nextInt();
    int first, second, third, total;
    first = num / 100;
    num = num - first * 100;
    second = num / 10;
    third = num - second * 10;
    total = first + second + third;
    System.out.printf("�� �ڸ����� �� = %d", total);
    in.close();
  }
}